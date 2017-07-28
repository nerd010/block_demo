//
//  AViewController.m
//  Block_demo
//
//  Created by Charles Wang on 16/7/21.
//  Copyright © 2016年 CHW. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.sendMsgToB = SendMsgToB;
    self.aToBLabel.text = @"我的从 A 过来的";
//    self.sendMsgToB(self.aToBLabel.text);
}

//- (void)setSendMsgToB:(SendMsgToB)sendMsgToB
//{
//    if (self.sendMsgToB)
//    {
//        self.sendMsgToB = ^NSString *(NSString *toBString){
//            return toBString;
//        };
//    }
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickedBtnA:(id)sender
{
    __weak typeof (self)weakSelf = self;
    BViewController *bVC = [self.storyboard instantiateViewControllerWithIdentifier:@"BViewController"];
    bVC.sendMsgToA = ^(NSString *toAString) {
        weakSelf.bToALabel.text = toAString;
    };
    
    [self.navigationController pushViewController:bVC animated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
