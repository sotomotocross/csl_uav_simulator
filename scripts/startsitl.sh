#!/bin/bash
cd ~/ardupilot/ArduCopter/
sim_vehicle.py --mavproxy-args="--streamrate=100" -v ArduCopter -f gazebo-iris --console --map

