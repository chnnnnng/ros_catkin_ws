# ROS LEARNING NOTES

## FILESYSTEM
- rospack find ------ tell where a package is
- rospack list ------ list all ros packages
- roscd somepkg ------ enter a package directory
- rosls

## PACKAGE
- use script to create a package

```
$ cd ~/catkin_ws/src

$ catkin_create_pkg beginner_tutorials std_msgs rospy roscpp
#catkin_create_pkg <package_name> [depend1] [depend2] [depend3]
```
- build the workspace
```
$ cd ~/catkin_ws
$ catkin_make
```
- List dependencies
```
$ rospack depends1 somepkg
# notice that a number one after depends

$ ros depends somepkg
# this will list all packages that somepkg depends on, including package that those being depended depend on.(recursively)
```

## NODE
nodes are something publish and subscribe topics, use or provide services.
- fisrtly, run roscore:
```
$ roscore
```
- list nodes currently running
```
$ rosnode list
```
- list topics and services of a node
```
$ rosnode info /somenode
```
- RUN A NODE
```
$ rosrun somepkg somenode
# example: 
# $ rosrun turtlesim turtlesim_node
# if you use `rosnode list` now, you may find turtlesim_node is running
```
- ping a node
```
$ rosnode ping somenode
# use this command to test if a node is running
```
## TOPIC
```
# firstly:
$ roscore

# run first node
$ rosrun turtlesim turtlesim_node

#  run another node
$ rosrun turtlesim turtle_teleop_key
```

- rqt_graph
```
# run rqt_graph node
$ rosrun rqt_graph rqt_graph
# this will open a GUI frame that shows all running nodes and their relations
# ros nodes all communicate thru TOPIC
```
- rostopic
  - rostopic echo
    ```
    $ rostopic echo /turtle1/cmd_vel
    # this will show data of specific topic
    ```
  - rostopic list
    ```
    $ rostopic list -h
    # list topics (follow hints)
    ```
  - rostopic type
    ```
    $ rostopic type /turtle1/cmd_vel
    # show data structure of a topic
    ```
  - rostopic pub
    ```
    $ rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 1.8]'
    ```
    > -1 : (number one) indicates the message repete only one time then exit.

    > /turtle1/cmd_vel : specify which topic to publish 
    
    > geometry_msgs/Twist : specify data structure to use

    > -- tells the parser that all folling inputs shall not be intepreted as arguments, even leading by - (negative numbers)

    > '[2.0, 0.0, 0.0]' '[0.0, 0.0, 1.8]' :  real data

  - rostopic hz
    ```
    $ rostopic hz /turtle1/pose
    # tells the rate of a topic
    ```
- rqt_plot
```
# run rqt_plot node
$ rosrun rqt_plot rqt_plot

# this will open a GUI oscilloscope
```
## SERVICE
- rosservice list
```
$ rosservice list
# list all services that currently running nodes provide
```
- rosservice type
```
$ rosservice type /someservice
# example:
# rosservice type /clear
# std_srvs/Empty
# which indicates /clear takes no arguments when called

$ rosservice type /spawn | rossrv show
# this will show specific data structure 
```
- rosservice call
```
# rosservice call [service] [args]
$ rosservice call /clear
# call /clear service, no argument

$ rosservice call /spawn 2 2 0.2 ""
# call /spawn service, with 4 arguments -- x,y,theta,name
# return name
```
## PARAMETER
- rosparam set paramname paramvalue
- rosparam get paramname
  > use `rosparam get /` can get all parameters
- rosparam dump filename [namespace]:save to file, usually param.yml
- rosparam load filename [namespace]: load params from file

## TOOLS
- rqt ( use this simple command to open a GUI window to select tool)
- rosrun rqt_console rqt_console
- rosrun rqt_logger_level rqt_logger_level 
- roslaunch
```
roslaunch helps with running nodes

first,create a launch file
$ roscd somepkg
$ mkdir launch
$ cd launch

touch a file named blabla.launch with contents below:
```
```
<launch>

  <group ns="turtlesim1">
    <node pkg="turtlesim" name="sim" type="turtlesim_node"/>
  </group>

  <group ns="turtlesim2">
    <node pkg="turtlesim" name="sim" type="turtlesim_node"/>
  </group>

  <node pkg="turtlesim" name="mimic" type="mimic">
    <remap from="input" to="turtlesim1/turtle1"/>
    <remap from="output" to="turtlesim2/turtle1"/>
  </node>

</launch>
```
```
after these done, use

$ roslaunch beginner_tutorials turtlemimic.launch

to run all nodes
```
## MSG
msg is a file to describe a ROS message data structure, thus can be automatically parsed into different programming languages.
```
$ roscd somepkg
$ mkdir msg
$ cd mkdir
$ touch Student.msg
```
use a editor and type:
```
string first_name
string last_name
uint8 age
uint32 score
```
then open package.xml file and uncomment the folling lines:
```
<build_depend>message_generation</build_depend>
<exec_depend>message_runtime</exec_depend>
```
and open CMakeList.txt file, add `message_generation` to `find_package`, it may look like 
```
find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  rospy
  std_msgs
  turtlesim
  ...
  ...
  message_generation
)
```
now
still CMakeList.txt, add `message_runtime` to `catkin_package`.
now it look like:
```
catkin_package(
  ...
  CATKIN_DEPENDS message_runtime ...
  ...
)
```
then find these lines:
```
# Generate messages in the 'msg' folder
# add_message_files(
#   FILES
#   ...
# )
```
uncomment it and add your msg file to it,as shown below:
```
# Generate messages in the 'msg' folder
 add_message_files(
   FILES
   Student.msg
 )
```
lastly, uncomment
```
# generate_messages(
#   DEPENDENCIES
#   std_msgs
# )
```

After all these steps done, you are ready to do source code with your own msg.
```
# to show a msg
$ rosmsg show Student

[learning_topic/Student]:
string first_name
string last_name
uint8 age
uint32 score

#or,
$ rosmsg show learning_topic/Student

string first_name
string last_name
uint8 age
uint32 score

```
## SRV
similarly, srv is used to describe a service.
first, enter package root directory,
```
$ roscd somepkg
$ mkdir srv
$ cd src
```
you can touch a new .srv file, or simply copy it from an already exist one, like
```
roscp rospy_tutorials some.srv /srv/some.srv
```
it is also simple to create it by hand
```
touch some.srv
```
and edit it like:
```
int64 a
int64 b
---
int64 sum
```
> a and b stand for inputs, while sum stands for returns.

In `package.xml` file,uncomment following lines:(actually already done if you've done the msg stuff)
```
<build_depend>message_generation</build_depend>
<exec_depend>message_runtime</exec_depend>
```
open CMakeList.txt file, add `message_generation` to `find_package`, it may look like 
```
find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  rospy
  std_msgs
  turtlesim
  ...
  ...
  message_generation
)
```
uncomment lines:
```
# add_service_files(
#   FILES
#   Service1.srv
#   Service2.srv
# )
```
and add your own src file:
```
add_service_files(
  FILES
  ShowStudent.srv
  ...
)
```
after these done,
```
rossrv show somepkg/ShowStudent.srv

or 

rossrv show ShowStudent.srv
```

Lastly, build
```
# In your catkin workspace
$ roscd beginner_tutorials
$ cd ../..
$ catkin build
$ cd -
```