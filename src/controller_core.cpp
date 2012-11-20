#include "ros/ros.h"
#include "Controller_Core/channel_values.h"
//#include "Controller_Core/pid.h"
#include <pid.h>
#include <tf/transform_listener.h>
#include "tf/message_filter.h"
#include "message_filters/subscriber.h"

#include <sstream>

// Angle-PID's
  PID pid_pitch;
  PID pid_roll;
  PID pid_yaw;

  // Position-PID
  PID pid_position_x;
  PID pid_position_y;
  PID pid_position_z;

class PoseDrawer
  {
  public:
    PoseDrawer() : tf_(),  target_frame_("/mocap")
    {
      transform_sub_.subscribe(n_, "/tf/tfMessage/", 10);
      tf_filter_ = new tf::MessageFilter<geometry_msgs::TransformStamped>(transform_sub_, tf_, target_frame_, 10);
      tf_filter_->registerCallback( boost::bind(&PoseDrawer::control_task, this, _1) );
    } ;
  private:
    message_filters::Subscriber<geometry_msgs::TransformStamped> transform_sub_;
    tf::TransformListener tf_;
    tf::MessageFilter<geometry_msgs::TransformStamped> * tf_filter_;
    ros::NodeHandle n_;
    std::string target_frame_;

void control_task(const boost::shared_ptr<const geometry_msgs::TransformStamped>& point_ptr)
{

	static int count = 0;
	static float x,y,z,x_rot,y_rot,z_rot = 0;
	float setpoint_roll,setpoint_pitch,setpoint_yaw,setpoint_x,setpoint_y,setpoint_z = 0;
	ros::Time time_between_pid;

	static  tf::StampedTransform transform;
	// RECIEVE THE COORDINATES FROM MOCAP HERE
	    try{
	    	//tf::transformStampedMsgToTF(*point_ptr,transform);
			//tf_.lookupTransform("/mocap", "/map",
				//							 ros::Time(0), transform);
	    	 //tf_.transformPoint(target_frame_, *point_ptr, transform);
	    	ROS_INFO("JETZT");
		  }
		  catch (tf::TransformException ex){
		      	ROS_ERROR("%s",ex.what());
		  }

		  /*
		x = transform.getOrigin().x();
		y = transform.getOrigin().y();
		z = transform.getOrigin().z();
		x_rot = transform.getRotation().x();
		y_rot = transform.getRotation().y();
		z_rot = transform.getRotation().z();
	    //ROS_INFO("GOT BODY: %f %f %f Rot: %f %f %f",x,y,z,x_rot,y_rot,z_rot);

	    // UPDATE PID'S HERE
	    pid_position_x.process(x,setpoint_x,1.0);
	    pid_position_y.process(x,setpoint_x,1.0);
		pid_position_z.process(x,setpoint_x,1.0);

	    pid_roll.process(x_rot,setpoint_roll,1.0);
	    pid_pitch.process(y_rot,setpoint_pitch,1);
	    pid_yaw.process(z_rot,setpoint_yaw,1);

	    Controller_Core::channel_values msg;
	    // Create msg for the RC-Controller
	    msg.channel_1 = count;
	    msg.channel_2 = count;
	    msg.channel_3 = count;
	    msg.channel_4 = count;
	    msg.channel_5 = count;
	    msg.channel_6 = count;
	    msg.channel_7 = count;

	    // Publish the msg to the RC-Controller
	    //chatter_pub.publish(msg);
	    //ros::spinOnce();
//	    loop_rate.sleep();
	    count++;
	    if (count >100) count = 0;
	    */
	};
};

int main(int argc, char **argv)
{
  ros::init(argc, argv, "controller_core");
  ROS_INFO("Core is running now");
  //ros::Publisher chatter_pub = n.advertise<Controller_Core::channel_values>("Channel_Information", 1000);
  PoseDrawer pd;
  ros::spin();
  return 0;
}
