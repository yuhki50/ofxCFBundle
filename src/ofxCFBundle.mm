#include "ofxCFBundle.h"

#import <Foundation/Foundation.h>

std::string ofxCFBundle::getAppName() { return getValue("CFBundleExecutable"); }

std::string ofxCFBundle::getVersionString() {
  return getValue("CFBundleShortVersionString");
}

std::string ofxCFBundle::getBuildString() {
  return getValue("CFBundleVersion");
}

std::string ofxCFBundle::getBundleIdentifier() {
  return getValue("CFBundleIdentifier");
}

std::string ofxCFBundle::getValue(std::string keyName) {
  NSString* key = [NSString stringWithUTF8String:keyName.c_str()];
  NSString* value = [[[NSBundle mainBundle] infoDictionary] objectForKey:key];
  return [value UTF8String];
}
