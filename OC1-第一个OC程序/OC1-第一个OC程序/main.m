//
//  main.m
//  OC1-第一个OC程序
//
//  Created by sjyin on 6/26/15.
//  Copyright (c) 2015 sjyin. All rights reserved.
//

#import <Foundation/Foundation.h>
//#include <Foundation/Foundation.h>
//1 为什么要使用import，import和include的区别（面试题）
/*
 import和include都是引入头文件
 import引入的头文件可以防止重复包含
 include如果没有写预处理指令则无法防止重复包含
 */
//2 import和@class的区别
//3 Foundation/Foundation.h 是什么
//4 NSLog 和 printf 使用的区别？
/*
 NSLog打印的字符串会自动换行，而printf不可以；
 NSLog会自动输出时间等项目信息，而printf不可以；
 NSLog传递的函数参数是一个NSString对象，而printf是一个字符串常量指针
 */
//NSLog
/*
 printf("%d",a);  NSLog(@"%d",a);
 */
//NSString  用 %@ 输出字符串
/*
 NSString *str = @"张三丰";
 NSLog(@"%@",str);
 */
 
/*
  把oc中的库文件引入到工程中
 
 未完 待续 1-4。。。
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
