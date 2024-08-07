# EuROC数据集
# 用微型飞行器采集的视觉惯性数据集，包含双目相机和IMU同步测量数据及位姿的真值。
# 纯单目
./Examples/Monocular/mono_euroc ./Vocabulary/ORBvoc.txt ./Examples/Monocular/EuRoC.yaml ./data/MH_01_easy ./Examples/Monocular/EuRoC_TimeStamps/MH01.txt dataset-MH01_mono

# 双目惯导
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/EuRoC.yaml ./data/MH_01_easy ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH01.txt dataset-MH01_stereo_inertial





# 另外也可以使用ros2，获得实时数据进行处理
https://blog.csdn.net/liiiuzy/article/details/136272727