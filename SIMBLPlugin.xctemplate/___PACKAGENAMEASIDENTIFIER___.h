//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___
//___COPYRIGHT___
//

#import <Cocoa/Cocoa.h>
#import "SynthesizeSingleton.h"
#import "JRSwizzle.h"
@interface ___FILEBASENAMEASIDENTIFIER___ : NSObject
+ (___FILEBASENAMEASIDENTIFIER___ *)sharedController;
- (void)swizzle;
@end
