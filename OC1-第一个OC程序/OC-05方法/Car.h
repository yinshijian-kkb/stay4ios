//
//  Car.h
//  OC1-第一个OC程序
//
//  Created by sjyin on 7/3/15.
//  Copyright (c) 2015 sjyin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
@public
    int _speed;
}
-(void)start;
-(void)stop;
-(void)run;
-(void)run:(NSString*)str;
@end
