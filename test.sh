# EuROC数据集
# https://projects.asl.ethz.ch/datasets/doku.php?id=kmavvisualinertialdatasets
# 用微型飞行器(micro aerial vehicle)采集的视觉惯性数据集(machine hall, vicon room)，包含双目相机和IMU同步测量数据及位姿的真值。

wget http://robotics.ethz.ch/~asl-datasets/ijrr_euroc_mav_dataset/machine_hall/MH_01_easy/MH_01_easy.zip
wget http://robotics.ethz.ch/~asl-datasets/ijrr_euroc_mav_dataset/machine_hall/MH_01_easy/MH_01_easy.bag

# 纯单目
Examples/Monocular/mono_euroc Vocabulary/ORBvoc.txt Examples/Monocular/EuRoC.yaml data/MH_01_easy Examples/Monocular/EuRoC_TimeStamps/MH01.txt dataset-MH01_mono

# 双目惯导
Examples/Stereo-Inertial/stereo_inertial_euroc Vocabulary/ORBvoc.txt Examples/Stereo-Inertial/EuRoC.yaml data/MH_01_easy Examples/Stereo-Inertial/EuRoC_TimeStamps/MH01.txt dataset-MH01_stereo_inertial


# TUM VI 数据集
# https://cvg.cit.tum.de/data/datasets/visual-inertial-dataset
# 高动态范围
wget https://vision.in.tum.de/tumvi/exported/euroc/512_16/dataset-room1_512_16.tar
wget https://vision.in.tum.de/tumvi/calibrated/512_16/dataset-room1_512_16.bag

# 纯单目
Examples/Monocular/mono_tum_vi Vocabulary/ORBvoc.txt Examples/Monocular/TUM-VI.yaml data/dataset-room1_512_16/mav0/cam0/data Examples/Monocular/TUM_TimeStamps/dataset-room1_512.txt dataset-room1_512_mono


# RGB-D数据集
# https://cvg.cit.tum.de/data/datasets/rgbd-dataset/download
wget https://cvg.cit.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_desk.tgz

# freiburg1_desk
python evaluation/associate.py data/rgbd_dataset_freiburg1_desk/rgb.txt data/rgbd_dataset_freiburg1_desk/depth.txt data/rgbd_dataset_freiburg1_desk/associations.txt
Examples/RGB-D/rgbd_tum Vocabulary/ORBvoc.txt Examples/RGB-D/TUM1.yaml data/rgbd_dataset_freiburg1_desk data/rgbd_dataset_freiburg1_desk/associations.txt

# freiburg1_xyz
python evaluation/associate.py data/rgbd_dataset_freiburg1_xyz/rgb.txt data/rgbd_dataset_freiburg1_xyz/depth.txt data/rgbd_dataset_freiburg1_xyz/associations.txt
Examples/RGB-D/rgbd_tum Vocabulary/ORBvoc.txt Examples/RGB-D/TUM1.yaml data/rgbd_dataset_freiburg1_xyz data/rgbd_dataset_freiburg1_xyz/associations.txt

# semantic
Examples/RGB-D/rgbd_tum_semantic Vocabulary/ORBvoc.txt Examples/RGB-D/TUM1_semantic.yaml data/rgbd_dataset_freiburg1_desk data/rgbd_dataset_freiburg1_desk/associations.txt
# viz
Examples/RGB-D/osa_viz Vocabulary/ORBvoc.txt Examples/RGB-D/osa_viz.yaml
# viz point cloud
# https://blog.csdn.net/qq_45848817/article/details/126024785

# 另外也可以使用ros2，获得实时数据进行处理
https://blog.csdn.net/liiiuzy/article/details/136272727