#include <iostream>
#include "opencv2/opencv.hpp"
#include "onnxruntime_cxx_api.h"
using namespace std;


int main() {
    std::cout << "Hello, World!" << std::endl;
    Ort::Env env = nullptr;
    cv::Mat test;
    test = cv::imread("/root/lite.ai.toolkit/1.jpg");
    cout<<test<<endl;

    return 0;
}
