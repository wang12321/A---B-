//
//  ViewController.m
//  asdsadsad
//
//  Created by 汪利钢 on 15/11/12.
//  Copyright © 2015年 汪利钢. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)butt:(UIButton *)sender {
//    NSString *str = @"aadqwe://ax.com.aadqwe;
    NSURL *url = [NSURL URLWithString:@"asdsadsad://ax.com.asdsadsad"];
    [[UIApplication sharedApplication] openURL:url];
//    NSURL * myURL_APP_A = [NSURL URLWithString:@"ax.com.aadqwe://"];
//    if ([[UIApplication sharedApplication] canOpenURL:myURL_APP_A]) {
//        NSLog(@"canOpenURL");
//        [[UIApplication sharedApplication] openURL:myURL_APP_A];
//    }

//     [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://8004664411"]];
//     [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://itunesconnect.apple.com"]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  CGFloat   width = [UIScreen mainScreen].bounds.size.width;
    CGFloat  height = [UIScreen mainScreen].bounds.size.height;
    NSLog(@"%f   --  %f",width,height);
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
