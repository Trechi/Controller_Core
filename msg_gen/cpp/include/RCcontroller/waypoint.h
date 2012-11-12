/* Auto-generated by genmsg_cpp for file /home/johanv/ros_workspace_final/RCcontroller/msg/waypoint.msg */
#ifndef RCCONTROLLER_MESSAGE_WAYPOINT_H
#define RCCONTROLLER_MESSAGE_WAYPOINT_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace RCcontroller
{
template <class ContainerAllocator>
struct waypoint_ {
  typedef waypoint_<ContainerAllocator> Type;

  waypoint_()
  {
  }

  waypoint_(const ContainerAllocator& _alloc)
  {
  }


  typedef boost::shared_ptr< ::RCcontroller::waypoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::RCcontroller::waypoint_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct waypoint
typedef  ::RCcontroller::waypoint_<std::allocator<void> > waypoint;

typedef boost::shared_ptr< ::RCcontroller::waypoint> waypointPtr;
typedef boost::shared_ptr< ::RCcontroller::waypoint const> waypointConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::RCcontroller::waypoint_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::RCcontroller::waypoint_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace RCcontroller

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::RCcontroller::waypoint_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::RCcontroller::waypoint_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::RCcontroller::waypoint_<ContainerAllocator> > {
  static const char* value() 
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const  ::RCcontroller::waypoint_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::RCcontroller::waypoint_<ContainerAllocator> > {
  static const char* value() 
  {
    return "RCcontroller/waypoint";
  }

  static const char* value(const  ::RCcontroller::waypoint_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::RCcontroller::waypoint_<ContainerAllocator> > {
  static const char* value() 
  {
    return "\n\
";
  }

  static const char* value(const  ::RCcontroller::waypoint_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::RCcontroller::waypoint_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::RCcontroller::waypoint_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct waypoint_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::RCcontroller::waypoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::RCcontroller::waypoint_<ContainerAllocator> & v) 
  {
  }
};


} // namespace message_operations
} // namespace ros

#endif // RCCONTROLLER_MESSAGE_WAYPOINT_H
