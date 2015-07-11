//
//  main.m
//  OC-04NSString用法
//
//  Created by sjyin on 6/30/15.
//  Copyright (c) 2015 sjyin. All rights reserved.
//

#import <Foundation/Foundation.h>

void test(){
    //创建方式一
    NSString* str1 = @"String 1";
    NSLog(@"%@",str1);
    //创建方式二
    NSString* str2 = [NSString new];
    str2 = @"I am NSString";
    NSLog(@"%@",str2);
    //创建方式三
    NSString* str3 = [NSString stringWithFormat:@"xxxx%02d.png",2];
    NSLog(@"%@",str3);
    //创建方式四
    NSString* str4 = [[NSString alloc] initWithString:str2];
    NSLog(@"%@",str4);
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test();
    }
    return 0;
}
