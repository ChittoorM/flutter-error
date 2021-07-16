import Flutter
import UIKit
import sampleFramework

public class SwiftMyFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "my_flutter_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftMyFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    _ = BasicArithmetic(); // Access the class defined in the sampleFramework.xcframework file
    result("iOS " + UIDevice.current.systemVersion)
  }
}
