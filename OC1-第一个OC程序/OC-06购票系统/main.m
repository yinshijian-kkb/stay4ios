//
//  main.m
//  OC-06购票系统
//
//  Created by sjyin on 7/8/15.
//  Copyright (c) 2015 sjyin. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 购票系统
 
 1 功能展示：
 --欢迎界面
 
 ****欢迎使用购票系统****
 你可以使用本系统购买：1 电影票 2 演唱会票
 
 对象
 编号：1
 名称：忍者神龟2 时长：120分钟 主演：乌龟、耗子、忍者  上映时间：2012-12-11
 开始时间：15：20 票价：9.9元
 
 --选座位
 请输入电影编号：
 4
 
 --确认购票
 购票信息：
 
 
 */

void buyMovieTicket(){
    
    Cinema cinema = [Cinema new];
    [cinema buyTicket];
    
    //未完 待续 21：6_7
    
}

void butOtherTicket(){
    NSLog(@"买其他的票");
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //打印欢迎信息
        NSLog(@"****欢迎使用购票系统****");
        //提示用户选择
        NSLog(@"你可以使用本系统购买：1 电影票 2 演唱会票");
        //用户选择不同的功能 调用不同的函数
        int num;
        scanf("%d",&num);
        //在函数中创建对象，开始购票
        switch (num) {
            case 1:
                buyMovieTicket();
                break
            case 2:
                buyOtherTicket();
                break;
            default:
                break;
        }
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
