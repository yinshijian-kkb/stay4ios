//
//  ViewController.m
//  01-计算器2
//
//  Created by sjyin on 7/10/15.
//  Copyright (c) 2015 sjyin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//视图加载完成
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)compute{
    NSLog(@"计算");
    
    //关闭键盘
    /*
     原则：谁申请谁关闭
     方式一：
     [self.num1 resignFirstResponder];
     方式二：
     [self.view endEditing:true];
     
     */
    [self.num1 resignFirstResponder];
    [self.view endEditing:true];
}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

@end
