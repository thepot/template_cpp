#include <iostream>

#include "demo.hpp"

int main(int argc, char** argv){
  demo test;
  std::cout << "HelloWord : "<< test.sum(4,5) << std::endl;
  return 1;
}