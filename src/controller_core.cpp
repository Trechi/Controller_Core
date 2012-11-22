#include "ros/ros.h"
#include "Controller_Core2/channel_values.h"
#include "Controller_Core2/waypoint.h"
#include <pid.h>
#include <tf/transform_listener.h>

ros::Publisher chatter_pub;
float setpoint_x,setpoint_y,setpoint_z,setpoint_yaw;

#include <sstream>

// Angle-PID's
  PID pid_pitch;
  PID pid_roll;
  PID pid_yaw;

  // Position-PID
  PID pid_position_x;
  PID pid_position_y;
  PID pid_position_z;


void control_task(const tf::tfMessageConstPtr& tf_msg)
{
	static int count = 0;
	static float x,y,z,x_rot,y_rot,z_rot = 0;
	float setpoint_roll,setpoint_pitch= 0;
	ros::Time time_between_pid;
	static tf::TransformListener listener;
	tf::StampedTransform transform;
	// RECIEVE THE COORDINATES FROM MOCAP HERE
	    try{
			listener.lookupTransform("/mocap", "/map",
											 ros::Time(0), transform);
			//ROS_INFO("JETZT");
		  }
		  catch (tf::TransformException ex){
		      	ROS_ERROR("%s",ex.what());
		  }

		x = transform.getOrigin().x();
		y = transform.getOrigin().y();
		z = transform.getOrigin().z();
		x_rot = transform.getRotation().x();
		y_rot = transform.getRotation().y();
		z_rot = transform.getRotation().z();
	    ROS_INFO("GOT BODY: %f %f %f Rot: %f %f %f",x,y,z,x_rot,y_rot,z_rot);

	    // UPDATE PID'S HERE
	    pid_position_x.process(x,setpoint_x,1.0);
	    pid_position_y.process(y,setpoint_y,1.0);
		pid_position_z.process(z,setpoint_z,1.0);

	    pid_roll.process(x_rot,setpoint_roll,1.0);
	    pid_pitch.process(y_rot,setpoint_pitch,1);
	    pid_yaw.process(z_rot,setpoint_yaw,1);

	    Controller_Core2::channel_values msg;
	    // Create msg for the RC-Controller
	    msg.channel_1 = count;
	    msg.channel_2 = count;
	    msg.channel_3 = count;
	    msg.channel_4 = count;
	    msg.channel_5 = count;
	    msg.channel_6 = count;
	    msg.channel_7 = count;

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
  double p,i,d,max,min = 0.0;
  n.param("PID_P",p,10.0);
  n.param("PID_I",i,0.2);
  n.param("PID_D",d,0.2);
  n.param("PID_Max",max,250.0);
  n.param("PID_Min",min,250.0);
  // Setup roll
  pid_roll.set_P(p);
  pid_roll.set_I(i);
  pid_roll.set_D(d);
  pid_roll.set_ranges(max,min);
  // Setup pitch
  pid_pitch.set_P(p);
  pid_pitch.set_I(i);
  pid_pitch.set_D(d);
  pid_pitch.set_ranges(max,min);
  // Setup Yaw
  pid_yaw.set_P(p);
  pid_yaw.set_I(i);
  pid_yaw.set_D(d);
  pid_yaw.set_ranges(max,min);

  chatter_pub = n.advertise<Controller_Core2::channel_values>("Channel_Information", 1000);
  ros::Subscriber sub = n.subscribe<tf::tfMessage>("/tf", 100, control_task);
  ros::Subscriber sub_2 = n.subscribe<Controller_Core2::waypoint>("Waypoints",100,write_waypoint);
  ros::spin();
  return 0;
}
