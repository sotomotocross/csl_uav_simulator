source ~/anaconda3/etc/profile.d/conda.sh
conda activate tf-gpu-cuda10
cd ~/ROS_workspaces/ecatkin_ws
source devel/setup.bash
rosrun tryy subtry.py