# ofxCFBundle

Access to the `/bin/*.app/Info.plist` file.


##Usage

Display the `[app name]  [version]` in the window title.
ex) `mySketch  1.0.0`


```
void ofApp::setup(){
    ofSetWindowTitle(ofxCFBundle::getAppName() + "  " + ofxCFBundle::getVersionString());
}
```


##License

MIT License
