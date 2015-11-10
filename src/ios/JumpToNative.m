//
//  JumpToNative.m
//  QDSDKDemo
//
//  Created by ZengTark on 15/11/10.
//
//

#import "JumpToNative.h"

@implementation JumpToNative

- (void)jumpToNative:(CDVInvokedUrlCommand *)command
{
    NSString *className = [NSString stringWithFormat:@"%@",[command.arguments objectAtIndex:0]];
    if (className != NULL && className.length > 0) {
        UIViewController *toViewController = [[NSClassFromString(className) alloc] init];
        [self.viewController.navigationController pushViewController:toViewController animated:NO];
    }
}


@end
