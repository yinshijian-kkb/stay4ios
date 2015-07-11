//
//  ViewController.h
//  01-计算器2
//
//  Created by sjyin on 7/10/15.
//  Copyright (c) 2015 sjyin. All rights reserved.
//

#import <UIKit/UIKit.h>

/*
 IB:Interface Builder
 1 IBAction:点击操作（有方法的时候）
 2 IBOutlet:获得和修改属性的操作（获取属性的时候）
 
 
 */

@interface ViewController : UIViewController

@property(nonatomic,weak) IBOutlet UITextField *num1;
@property(nonatomic,weak) IBOutlet UITextField *num2;
@property(nonatomic,weak) IBOutlet UILabel *resultLabel;

-(IBAction)compute;

@end

