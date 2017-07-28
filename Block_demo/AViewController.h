//
//  AViewController.h
//  Block_demo
//
//  Created by Charles Wang on 16/7/21.
//  Copyright © 2016年 CHW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *aToBLabel;
@property (weak, nonatomic) IBOutlet UILabel *bToALabel;

- (IBAction)clickedBtnA:(id)sender;

@end
