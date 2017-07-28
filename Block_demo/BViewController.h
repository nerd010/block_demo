//
//  BViewController.h
//  Block_demo
//
//  Created by Charles Wang on 16/7/21.
//  Copyright © 2016年 CHW. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^SendMsgToA)(NSString *toAString);

@interface BViewController : UIViewController

@property (nonatomic, copy) SendMsgToA sendMsgToA;

@property (weak, nonatomic) IBOutlet UILabel *showALabel;
@property (weak, nonatomic) IBOutlet UILabel *toALabel;

- (IBAction)clickedBtnB:(id)sender;

@end
