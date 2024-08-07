#include <iostream>  
#include <fstream>  
#include <string>  
#include<System.h>
#include <thread>  // std::this_thread::sleep_for  

  
int main(int argc, char **argv)  
{  
    if(argc != 3)  
    {  
        std::cerr << "Usage: ./orb_slam3 <vocabulary_file> <settings_file>" << std::endl;  
        return 1;  
    }  
  
    // 创建 ORB-SLAM3 系统实例  
    ORB_SLAM3::System SLAM(argv[1], argv[2], ORB_SLAM3::System::RGBD, true);  
  
    // 开始主循环  
    while(true)  
    {  
        std::cout << "Running in a loop. Press Ctrl+C to exit." << std::endl;  
        std::this_thread::sleep_for(std::chrono::seconds(1));  // 每秒打印一次  
    }  
  
    // 关闭 ORB-SLAM3 系统  
    SLAM.Shutdown();  
  
    return 0;  
}  
