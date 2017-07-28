//
//  BViewController.m
//  Block_demo
//
//  Created by Charles Wang on 16/7/21.
//  Copyright © 2016年 CHW. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    AViewController *aVC = [[AViewController alloc] initWithNibName:@"AViewController" bundle:nil];
//    self.showALabel.text = aVC.sendMsgToB(@"哈哈");
//    [self sendToA: ^(NSString *toAString) {
//        
//    }];
    
    
//    self.sendMsgToA = ^NSString *(NSString *toAString){
//        return toAString;
//    };
    
    self.sendMsgToA(@"我是从 B 过来的！！！");
}

//- (void)sendToA:(SendMsgToA)sendMsgToABlock
//{
//    sendMsgToABlock(@"我是从 B 过来的！！！");
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickedBtnB:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
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
