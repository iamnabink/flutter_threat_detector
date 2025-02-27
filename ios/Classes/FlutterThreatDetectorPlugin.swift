import Flutter
import UIKit
import IOSSecuritySuite

public class FlutterThreatDetectorPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "FLUTTER_THREAT_DETECTOR", binaryMessenger: registrar.messenger())
    let instance = FlutterThreatDetectorPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "jailbroken":

            let check2 = IOSSecuritySuite.amIJailbroken()
            result(check2)
            break
        case "developerMode":
            result(IOSSecuritySuite.amIRunInEmulator())
            break
        default:
            result(FlutterMethodNotImplemented)
        }
  }
}