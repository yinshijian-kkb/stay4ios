//
//  Cinama.m
//  OC1-第一个OC程序
//
//  Created by sjyin on 7/9/15.
//  Copyright (c) 2015 sjyin. All rights reserved.
//

#import "Cinema.h"

@implementation Cinema

//1 定义：name 参数的初始化方法，初始化影片的信息

-(void)buyTicket{
    NSLog(@"开始购票");
    [self list];
}
-(void)list{
    NSLog(@"显示正在上映的电影");
    [self selectMovie];
}
-(void)selectMovie{
    NSLog(@"选择影片");
    [self selectRow];
}
-(void)selectRow{
    NSLog(@"选择排数");
    [self selectColumn];
}
-(void)selectColumn{
    NSLog(@"选择列数");
    [self pay];
}
-(void)pay{
    NSLog(@"开始支付");
    [self printTicket];
}
-(void)printTicket{
    //输出影片的信息
    NSLog(@"出票");
}

@end
