#!/usr/bin/env bash
git clone https://github.com/bart02/innopolis_open_draft.git
cd innopolis_open_draft

# Models
mkdir -p /home/clover/.gazebo/models/
cp -rf models/* /home/clover/.gazebo/models/

# World
cp -f clover.world /home/clover/catkin_ws/src/clover/clover_simulation/resources/worlds/

# Launch
cp -f simulator.launch /home/clover/catkin_ws/src/clover/clover_simulation/launch/
cp -f clover.launch /home/clover/catkin_ws/src/clover/clover/launch/
cp -f aruco.launch /home/clover/catkin_ws/src/clover/clover/launch/

# Map
cp -f map.txt /home/clover/catkin_ws/src/clover/aruco_pose/map/

cd ..
rm -rf innopolis_open_draft

echo "Done!"
