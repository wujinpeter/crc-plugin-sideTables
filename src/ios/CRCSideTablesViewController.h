//
//  CRCSideTablesViewController.h
//  CRCSideTables
//
//  Created by wujin on 2016/12/26.
//  Copyright © 2016年 Individual Developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Cordova/CDV.h>

@protocol CRCSideTablesViewControllerwDelegate

-(void)returnDataToHtml:(CDVInvokedUrlCommand*)command array:(NSMutableArray *)array;

@end

@interface CRCSideTablesViewController : UIViewController

@property (nonatomic, strong) CDVInvokedUrlCommand *command;
@property (nonatomic,assign) id<CRCSideTablesViewControllerwDelegate> delegate;

@end
