/********* httpClient.h Cordova Plugin *******/

#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface CRCSideTables : CDVPlugin {
    // Member variables go here.
}
- (void)coolMethod:(CDVInvokedUrlCommand*)command;
- (void)getApproverTree:(CDVInvokedUrlCommand*)command;

@end
