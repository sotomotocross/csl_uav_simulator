#!/bin/bash
cd ~/ardupilot/ArduCopter/
sim_vehicle.py --mavproxy-args="--streamrate=30" --console --map -v ArduCopter -f gazebo-iris


