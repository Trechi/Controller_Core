#include "ros/ros.h"
#include "Controller_Core2/waypoint.h"
#include <sstream>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "waypoint_generator");

  ros::NodeHandle n;

  ros::Publisher chatter_pub = n.advertise<Controller_Core2::waypoint>("Waypoints", 1000);
  // Frequency
  ros::Rate loop_rate(10);
  while (ros::ok())
  {
    Controller_Core2::waypoint waypoint;
    waypoint.x = 0.0;
    waypoint.y = 0.0;
    waypoint.z = 0.0;
    waypoint.yaw = 0.0;

    chatter_pub.publish(waypoint);
    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}
