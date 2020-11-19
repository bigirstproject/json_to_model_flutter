#import "JsonAndModelFlutterPlugin.h"
#if __has_include(<json_and_model_flutter/json_and_model_flutter-Swift.h>)
#import <json_and_model_flutter/json_and_model_flutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "json_and_model_flutter-Swift.h"
#endif

@implementation JsonAndModelFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftJsonAndModelFlutterPlugin registerWithRegistrar:registrar];
}
@end
