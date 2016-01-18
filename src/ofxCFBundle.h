#pragma once

#include <iostream>

class ofxCFBundle {
 public:
  static std::string getAppName();
  static std::string getVersionString();
  static std::string getBuildString();
  static std::string getBundleIdentifier();
  static std::string getValue(std::string keyName);
};
