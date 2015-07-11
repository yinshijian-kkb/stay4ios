//
//  Car.m
//  OC1-第一个OC程序
//
//  Created by sjyin on 7/3/15.
//  Copyright (c) 2015 sjyin. All rights reserved.
//

#import "Car.h"

@implementation Car
-(void)start{
    NSLog(@"开车");
}
-(void)stop{
    NSLog(@"停车");
}
-(void)run{
    NSLog(@"车在跑");
}
-(void)run:(NSString*) str{
    NSLog(@"%@在跑",str);
};
+(void)method{
    
}
//重写构造方法
- (id)init {
    self = [super init];
    if (self) {
        // Initialize self.
    }
    return self;
}
@end
