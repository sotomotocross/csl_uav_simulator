# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tryy: 1 messages, 0 services")

set(MSG_I_FLAGS "-Itryy:/home/sotiris/ROS_workspaces/ecatkin_ws/src/tryy/msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tryy_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sotiris/ROS_workspaces/ecatkin_ws/src/tryy/msg/PREDdata.msg" NAME_WE)
add_custom_target(_tryy_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tryy" "/home/sotiris/ROS_workspaces/ecatkin_ws/src/tryy/msg/PREDdata.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tryy
  "/home/sotiris/ROS_workspaces/ecatkin_ws/src/tryy/msg/PREDdata.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tryy
)

### Generating Services

### Generating Module File
_generate_module_cpp(tryy
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tryy
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tryy_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tryy_generate_messages tryy_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sotiris/ROS_workspaces/ecatkin_ws/src/tryy/msg/PREDdata.msg" NAME_WE)
add_dependencies(tryy_generate_messages_cpp _tryy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tryy_gencpp)
add_dependencies(tryy_gencpp tryy_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tryy_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tryy
  "/home/sotiris/ROS_workspaces/ecatkin_ws/src/tryy/msg/PREDdata.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tryy
)

### Generating Services

### Generating Module File
_generate_module_eus(tryy
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tryy
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tryy_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tryy_generate_messages tryy_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sotiris/ROS_workspaces/ecatkin_ws/src/tryy/msg/PREDdata.msg" NAME_WE)
add_dependencies(tryy_generate_messages_eus _tryy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tryy_geneus)
add_dependencies(tryy_geneus tryy_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tryy_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tryy
  "/home/sotiris/ROS_workspaces/ecatkin_ws/src/tryy/msg/PREDdata.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tryy
)

### Generating Services

### Generating Module File
_generate_module_lisp(tryy
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tryy
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tryy_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tryy_generate_messages tryy_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sotiris/ROS_workspaces/ecatkin_ws/src/tryy/msg/PREDdata.msg" NAME_WE)
add_dependencies(tryy_generate_messages_lisp _tryy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tryy_genlisp)
add_dependencies(tryy_genlisp tryy_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tryy_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tryy
  "/home/sotiris/ROS_workspaces/ecatkin_ws/src/tryy/msg/PREDdata.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tryy
)

### Generating Services

### Generating Module File
_generate_module_nodejs(tryy
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tryy
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tryy_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tryy_generate_messages tryy_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sotiris/ROS_workspaces/ecatkin_ws/src/tryy/msg/PREDdata.msg" NAME_WE)
add_dependencies(tryy_generate_messages_nodejs _tryy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tryy_gennodejs)
add_dependencies(tryy_gennodejs tryy_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tryy_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tryy
  "/home/sotiris/ROS_workspaces/ecatkin_ws/src/tryy/msg/PREDdata.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tryy
)

### Generating Services

### Generating Module File
_generate_module_py(tryy
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tryy
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tryy_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tryy_generate_messages tryy_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sotiris/ROS_workspaces/ecatkin_ws/src/tryy/msg/PREDdata.msg" NAME_WE)
add_dependencies(tryy_generate_messages_py _tryy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tryy_genpy)
add_dependencies(tryy_genpy tryy_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tryy_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tryy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tryy
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(tryy_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tryy_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(tryy_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tryy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tryy
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(tryy_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tryy_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(tryy_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tryy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tryy
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(tryy_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tryy_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(tryy_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tryy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tryy
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(tryy_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tryy_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(tryy_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tryy)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tryy\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tryy
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(tryy_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tryy_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(tryy_generate_messages_py sensor_msgs_generate_messages_py)
endif()
