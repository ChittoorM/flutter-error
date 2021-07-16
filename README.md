To initially configure the files, run ```flutter pub get``` in the terminal from the My_flutter_plugin and my_flutter_module directories.   

To regenrate the error: run ```flutter build ios-framework --xcframework --no-universal --output=<ABSOLUTE PATH TO Outputs DIRECTORY>``` from my_flutter_module directory

## Description
The directory **my_flutter_plugin** has a sample Flutter plugin that accesses classes defined in a xcframework file (name: sampleFramework.xcframework) located at flutter-error/my_flutter_plugin/ios/ directory. This xcframework file is imported by plugin using these commands added in _flutter-error/my_flutter_plugin/ios/my_flutter_plugin.podspec_ file

```s.preserve_paths = 'myFramework.xcframework'```    
```s.xcconfig = { 'OTHER_LDFLAGS' => '-framework myFramework' }```      
```s.vendored_frameworks = 'myFramework.xcframework'```

The reference for the same is [here](https://github.com/flutter/flutter/issues/17978#issuecomment-392717702)

The directory **my_flutter_module** has a sample flutter module that imports and calls the above plugin

**ERROR:** While generating the xcframeworks of the module **my_flutter_module** using the command ```flutter build ios-framework --xcframework --no-universal --output=<ABSOLUTE PATH TO Outputs DIRECTORY>``` from the _my_flutter_module_ directory, the process fails.
