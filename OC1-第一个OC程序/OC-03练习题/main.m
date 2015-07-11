//
//  main.m
//  OC-03练习题
//
//  Created by sjyin on 6/29/15.
//  Copyright (c) 2015 sjyin. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum{red,black,white,blue,green}Color;
typedef enum{male,female}Gender;
@interface DOG:NSObject{
    @public
    Color color;
    float speed;
    Gender gender;
    float weight;
}
-(void)eat:(NSString*) something;
-(void)shout;
-(void)run;
-(BOOL)compareColorWithAnother:(DOG*) otherDog;
-(void)compareWeightWithAnother:(DOG*) otherDog;
@end

@implementation DOG

-(void)eat:(NSString *) something{
    weight += 0.5;
    NSLog(@"吃过%@以后，体重变为了%.2f",something,weight);
}

-(void)shout{
    NSLog(@"The dog's color is %d,gender is %d,speed is %.2f,weight is %.2f",
           color,gender,speed,weight);
}

-(void)run{
    NSLog(@"The dog is run at %.2f km/h",speed);
}

-(BOOL)compareColorWithAnother:(DOG*) otherDog{
    if(otherDog -> color - color == 0){
        return TRUE;
    }else{
        return FALSE;
    }
}

-(void)compareWeightWithAnother:(DOG*) otherDog{
    if(otherDog -> weight > weight){
        NSLog(@"你重");
    }else{
        NSLog(@"我重");
    }
}

@end

/*
 设计一个狗类
 属性：
 颜色
 速度
 性别
 体重
 
 行为：
 吃：每吃一次，体重增加0.5，输出吃完后的体重
 叫：每叫一次，输出全部属性
 跑：每跑一次，体重减少0.5，输出速度和跑完后的体重
 比较颜色：减法，相同为YES，不同为NO
 比较体重：自己的体重- 其他狗的体重
 */

typedef struct{
    int year;
    int month;
    int day;
} MyDate;

@interface Student : NSObject{
    @public
    NSString* _name;
    MyDate _birthday;
}
@end

@implementation Student

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        MyDate d1 = {1990,8,2};
        
        Student* xiaoMing = [Student new];
        xiaoMing->_name = @"小明";
        //第一种
//        xiaoMing->_birthday = (MyDate){1990，8，2};
        //第二种
//        xiaoMing ->_birthday = d1;
        //第三种
        xiaoMing ->_birthday.year = 1990;
        xiaoMing ->_birthday.month = 8;
        xiaoMing ->_birthday.day = 2;
        
        NSLog(@"生日在 %d年%d月%d日",
              xiaoMing->_birthday.year,
              xiaoMing->_birthday.month,
              xiaoMing->_birthday.day
              );
        
        
//        DOG *xiaoHua = [DOG new];
//        xiaoHua->color = white;
//        xiaoHua->speed = 20;
//        xiaoHua->gender = male;
//        xiaoHua->weight = 50;
//        
//        DOG* xiaoHei = [DOG new];
//        xiaoHei->color = black;
//        xiaoHei->weight = 100;
//        
//        [xiaoHua eat:@"花生"];
//        [xiaoHua eat:@"玉米"];
//        
//        [xiaoHua shout];
//        [xiaoHua run];
//        
//        [xiaoHua compareWeightWithAnother:xiaoHei];
        
    }
    return 0;
}
