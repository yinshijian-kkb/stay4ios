//
//  Cinama.h
//  OC1-第一个OC程序
//
//  Created by sjyin on 7/9/15.
//  Copyright (c) 2015 sjyin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MovieTicket.h"

@interface Cinema : NSObject{
    NSString* name;
    MovieTicket* tickets[5];
}

-(void)buyTicket;
-(void)list;
-(void)selectMovie;
-(void)selectRow;
-(void)selectColumn;
-(void)pay;
-(void)printTicket;


@end
