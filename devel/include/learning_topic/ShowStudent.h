// Generated by gencpp from file learning_topic/ShowStudent.msg
// DO NOT EDIT!


#ifndef LEARNING_TOPIC_MESSAGE_SHOWSTUDENT_H
#define LEARNING_TOPIC_MESSAGE_SHOWSTUDENT_H

#include <ros/service_traits.h>


#include <learning_topic/ShowStudentRequest.h>
#include <learning_topic/ShowStudentResponse.h>


namespace learning_topic
{

struct ShowStudent
{

typedef ShowStudentRequest Request;
typedef ShowStudentResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ShowStudent
} // namespace learning_topic


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::learning_topic::ShowStudent > {
  static const char* value()
  {
    return "c1f3d28f1b044c871e6eff2e9fc3c667";
  }

  static const char* value(const ::learning_topic::ShowStudent&) { return value(); }
};

template<>
struct DataType< ::learning_topic::ShowStudent > {
  static const char* value()
  {
    return "learning_topic/ShowStudent";
  }

  static const char* value(const ::learning_topic::ShowStudent&) { return value(); }
};


// service_traits::MD5Sum< ::learning_topic::ShowStudentRequest> should match
// service_traits::MD5Sum< ::learning_topic::ShowStudent >
template<>
struct MD5Sum< ::learning_topic::ShowStudentRequest>
{
  static const char* value()
  {
    return MD5Sum< ::learning_topic::ShowStudent >::value();
  }
  static const char* value(const ::learning_topic::ShowStudentRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::learning_topic::ShowStudentRequest> should match
// service_traits::DataType< ::learning_topic::ShowStudent >
template<>
struct DataType< ::learning_topic::ShowStudentRequest>
{
  static const char* value()
  {
    return DataType< ::learning_topic::ShowStudent >::value();
  }
  static const char* value(const ::learning_topic::ShowStudentRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::learning_topic::ShowStudentResponse> should match
// service_traits::MD5Sum< ::learning_topic::ShowStudent >
template<>
struct MD5Sum< ::learning_topic::ShowStudentResponse>
{
  static const char* value()
  {
    return MD5Sum< ::learning_topic::ShowStudent >::value();
  }
  static const char* value(const ::learning_topic::ShowStudentResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::learning_topic::ShowStudentResponse> should match
// service_traits::DataType< ::learning_topic::ShowStudent >
template<>
struct DataType< ::learning_topic::ShowStudentResponse>
{
  static const char* value()
  {
    return DataType< ::learning_topic::ShowStudent >::value();
  }
  static const char* value(const ::learning_topic::ShowStudentResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LEARNING_TOPIC_MESSAGE_SHOWSTUDENT_H
