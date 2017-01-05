/********* CRCSideTables.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import "CRCSideTables.h"
#import "CRCSideTablesViewController.h"

@interface CRCSideTables ()<CRCSideTablesViewControllerwDelegate>

@end

@implementation CRCSideTables

- (void)coolMethod:(CDVInvokedUrlCommand*)command {
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getApproverTree:(CDVInvokedUrlCommand*)command {
    CRCSideTablesViewController *sideTablesVC = [[CRCSideTablesViewController alloc] init];
    sideTablesVC.command = command;
    sideTablesVC.delegate = self;
    [self.viewController presentViewController:sideTablesVC animated:YES completion:nil];
}

-(void)returnDataToHtml:(CDVInvokedUrlCommand*)command array:(NSMutableArray *)array{

    NSMutableDictionary *resultDict = [[NSMutableDictionary alloc] init];
    [resultDict setValue:array forKey:@"returnData"];

    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:resultDict];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
