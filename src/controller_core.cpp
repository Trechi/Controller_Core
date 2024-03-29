#include "ros/ros.h"
#include "Controller_Core2/channel_values.h"
#include "Controller_Core2/waypoint.h"
#include <pid.h>
#include <tf/transform_listener.h>

ros::Publisher chatter_pub;
float setpoint_x,setpoint_y,setpoint_z,setpoint_yaw;
double secs_old;

#include <sstream>

  /*
   * X-------------------------------------------------------
   * pid_position_x -----> pid_roll_velocity -----> pid_roll
   *
   * Y-------------------------------------------------------
   * pid_position_y -----> pid_pitch_velocity -----> pid_pitch
   *
   * Z--------------------------------------------------------
   * pid_position_z
   *
   * YAW------------------------------------------------------
   * pid_yaw
   */

  // Angle-PID's
  PID pid_pitch;
  PID pid_roll;
  PID pid_yaw;

  // Velocity Pid
  PID pid_pitch_velocity;
  PID pid_roll_velocity;

  // Position-PID
  PID pid_position_x;
  PID pid_position_y;
  PID pid_position_z;

  double throttle_hover;

void control_task(const tf::tfMessageConstPtr& tf_msg)
{
	// Time Measurement for PID's
	double time_duration = 0;
	double secs =ros::Time::now().toSec();
	time_duration = secs - secs_old;
    secs_old = ros::Time::now().toSec();
    //ROS_INFO("TIME_ELAPSED :%f",time_duration);

	static int count = 0;
	static float x,y,z,x_rot,y_rot,z_rot = 0;
	static float x_lin,y_lin,z_lin,x_ang,y_ang,z_ang;
	float setpoint_roll,setpoint_pitch,setpoint_roll_velocity,setpoint_pitch_velocity = 0;
	ros::Time time_between_pid;
	static tf::TransformListener listener;
	static tf::Transformer transformer;
	tf::StampedTransform transform;
	geometry_msgs::Twist twist;

	// RECIEVE THE COORDINATES FROM MOCAP HERE
	    try{
			listener.lookupTransform("/mocap", "/map",
											 ros::Time(0), transform);

			listener.lookupTwist("/mocap", "/map",ros::Time(0),ros::Duration(0.5),twist);
	    }
		  catch (tf::TransformException ex){
		      	ROS_ERROR("%s",ex.what());
		  }

		// Catch Data from mocap-system
		x = transform.getOrigin().x();
		y = transform.getOrigin().y();
		z = transform.getOrigin().z();
		x_rot = transform.getRotation().x();
		y_rot = transform.getRotation().y();
		z_rot = transform.getRotation().z();

		x_lin = twist.linear.x;
		y_lin = twist.linear.y;
		z_lin = twist.linear.z;
		x_ang = twist.angular.x;
		y_ang = twist.angular.y;
		z_ang = twist.angular.z;

		ROS_INFO("GOT POSE: %f %f %f Rot: %f %f %f",x,y,z,x_rot,y_rot,z_rot);
		ROS_INFO("GOT VELOCITY: %f %f %f ANG: %f %f %f",x_lin,y_lin,z_lin,x_ang,y_ang,z_ang);

	    Controller_Core2::channel_values msg;
	    // UPDATE PID'S HERE
	    // Position Control----------------------------------------------------------------------
	    setpoint_roll_velocity = pid_position_x.process(x,setpoint_x,time_duration);
	    setpoint_pitch_velocity = pid_position_y.process(y,setpoint_y,time_duration);
		msg.channel_4 = pid_position_z.process(z,setpoint_z,time_duration) + throttle_hover;

		// Velocity Control----------------------------------------------------------------------
		setpoint_roll = pid_roll_velocity.process(x_lin,setpoint_roll_velocity,time_duration);
		setpoint_pitch = pid_pitch_velocity.process(y_lin,setpoint_pitch_velocity,time_duration);

		// Rotation Control----------------------------------------------------------------------
	    msg.channel_1 = pid_roll.process(x_rot,setpoint_roll,time_duration);
	    msg.channel_2 = pid_pitch.process(y_rot,setpoint_pitch,time_duration);
	    msg.channel_3 = pid_yaw.process(z_rot,setpoint_yaw,time_duration);
	    // Publish the msg to the RC-Controller
	    chatter_pub.publish(msg);
}

void write_waypoint(const Controller_Core2::waypoint::ConstPtr& waypoint)
{
  setpoint_x = waypoint->x;
  setpoint_y = waypoint->y;
  setpoint_z = waypoint->z;
  setpoint_yaw = waypoint->yaw;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "controller_core");

  ros::NodeHandle n;

  //Parameter-Handling
  double p,i,d,p_position,i_position,d_position,max,min,max_position,min_position = 0.0;
  double p_velocity = 0.0, i_velocity = 0.0, d_velocity = 0.0, max_velocity = 0.0, min_velocity = 0.0;
  double integral_filter, integral_filter_position,integral_filter_velocity = 0;
  n.param("PID_P",p,0.5);
  n.param("PID_I",i,0.0);
  n.param("PID_D",d,0.02);
  n.param("PID_MAX",max,180.0);
  n.param("PID_MIN",min,120.0);
  n.param("PID_INTEGRAL_FILTER",integral_filter,5.0);

  n.param("PID_P_POSITION",p_position,0.5);
  n.param("PID_I_POSITION",i_position,0.0);
  n.param("PID_D_POSITION",d_position,0.02);
  n.param("PID_MAX_POSITION",max_position,170.0);
  n.param("PID_MIN_POSITION",min_position,130.0);
  n.param("PID_INTEGRAL_FILTER_POSITION",integral_filter_position,5.0);

  n.param("PID_P_VELOCITY",p_velocity,0.5);
  n.param("PID_I_VELOCITY",i_velocity,0.0);
  n.param("PID_D_VELOCITY",d_velocity,0.02);
  n.param("PID_MAX_VELOCITY",max_velocity,170.0);
  n.param("PID_MIN_VELOCITY",min_velocity,130.0);
  n.param("PID_INTEGRAL_FILTER_VELOCITY",integral_filter_velocity,5.0);

  n.param("THROTTLE_HOVER",throttle_hover,100.0);
  // **********************ROTATION-PID-CONFIGURATION*************************
  // Setup roll
  pid_roll.set_P(p);
  pid_roll.set_I(i);
  pid_roll.set_D(d);
  pid_roll.set_ranges(max,min);
  pid_roll.set_integral_filter(integral_filter);
  // Setup pitch
  pid_pitch.set_P(p);
  pid_pitch.set_I(i);
  pid_pitch.set_D(d);
  pid_pitch.set_ranges(max,min);
  pid_pitch.set_integral_filter(integral_filter);
  // Setup Yaw
  pid_yaw.set_P(p);
  pid_yaw.set_I(i);
  pid_yaw.set_D(d);
  pid_yaw.set_ranges(max,min);
  pid_yaw.set_integral_filter(integral_filter);

  /*
   * *********************VELOCITY-PID-CONFIGURATION*************************
   */
  // Setup roll
  pid_roll_velocity.set_P(p_velocity);
  pid_roll_velocity.set_I(i_velocity);
  pid_roll_velocity.set_D(d_velocity);
  // Setup pitch
  pid_pitch_velocity.set_P(p_velocity);
  pid_pitch_velocity.set_I(i_velocity);
  pid_pitch_velocity.set_D(d_velocity);

  //***********************POSITION-PID-CONFIGURATION*************************
  // Setup x
  pid_position_x.set_P(p_position);
  pid_position_x.set_I(i_position);
  pid_position_x.set_D(d_position);
  pid_position_x.set_ranges(max_position,min_position);
  pid_position_x.set_integral_filter(integral_filter_position);
  // Setup y
  pid_position_y.set_P(p_position);
  pid_position_y.set_I(i_position);
  pid_position_y.set_D(d_position);
  pid_position_y.set_ranges(max_position,min_position);
  pid_position_y.set_integral_filter(integral_filter_position);
  // Setup z
  pid_position_z.set_P(p_position);
  pid_position_z.set_I(i_position);
  pid_position_z.set_D(d_position);
  pid_position_z.set_ranges(max_position,min_position);
  pid_position_z.set_integral_filter(integral_filter_position);

  chatter_pub = n.advertise<Controller_Core2::channel_values>("Channel_Information", 1000);
  ros::Subscriber sub = n.subscribe<tf::tfMessage>("/tf", 100, control_task);
  ros::Subscriber sub_2 = n.subscribe<Controller_Core2::waypoint>("Waypoints",100,write_waypoint);
  ros::spin();
  return 0;
}
