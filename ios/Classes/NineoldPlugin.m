#import "NineoldPlugin.h"
#if __has_include(<nineold/nineold-Swift.h>)
#import <nineold/nineold-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "nineold-Swift.h"
#endif

@implementation NineoldPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNineoldPlugin registerWithRegistrar:registrar];
}
@end
