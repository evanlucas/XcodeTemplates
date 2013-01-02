//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___
//___COPYRIGHT___
//

#import "___FILEBASENAMEASIDENTIFIER___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()
- (id)initWithController:(CodaPlugInsController *)inController;
@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (id)initWithPlugInController:(CodaPlugInsController *)aController plugInBundle:(NSObject<CodaPlugInBundle> *)plugInBundle {
    return [self initWithController:aController];
}

- (id)initWithPlugInController:(CodaPlugInsController *)aController bundle:(NSBundle *)yourBundle {
    return [self initWithController:aController];
}

- (id)initWithController:(CodaPlugInsController *)inController {
    if (self = [super init]) {
        controller = inController;
        
        // Perform setup
        
        // [controller registerActionWithTitle:@"Action Title" target:self selector:@selector(doAction:)];
    }
    return self;
}

- (NSString *)name {
    return @"___FILEBASENAMEASIDENTIFIER___";
}

- (void)doAction:(id)sender {
    // Perform your action here
}
@end
