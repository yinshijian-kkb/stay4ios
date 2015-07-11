//
//  main.m
//  OC-02@符号的使用
//
//  Created by sjyin on 6/27/15.
//  Copyright (c) 2015 sjyin. All rights reserved.
//

#import <Foundation/Foundation.h>

void test(){
    //@符号的使用
    /*
     @"" -->表示一个字符串，如：NSSTtring
     @标识符 -->表示关键字，如：@interface @end @implementation @class
     */
    //OC中的注释 跟java一样
}

void test1(){
    
    //源文件对比
    /*
     在C和OC语言中，我们遇到的不同后缀的文件有哪些?
     .m   .c -->c语言的源文件
        .o -->目标文件
        .out --> 可执行文件
     .h   .h --> 头文件
     */
    
    //基本语法对比
    /*
     1 基本数据类型对比（具体什么类型 自己百度）
     c   基本数据类型
        构造类型
        指针类型
        空类型
        定义类型typedef
     
     oc 基本数据类型
        block类型
        指针数据类型
        特殊类型
     
     2 关键字的差异
        C语言的关键字在OC中都可以用
     
     3 流程控制语句对比
        OC提供了增强for循环
     
     4 函数定义和申明的差异
        OC中的方法习惯上称之为 函数
        函数的申明:
     -(int)sum:(int)a and (int)b;
        函数的定义：
     -(int)sum:(int) a and (int)b{
        return a+b;
     }
     */
    
    NSArray *arr = @[@"one",@"two",@"three"];
    for (NSString *str in arr) {
        NSLog(@"%@",str);
    }
}

void test2(){
    //新增数据类型
    /*
     逻辑类型：
     1 Boolean true/false 1/0
     2 BOOL  YES/NO  1/0 (BOOL相对于Boolean用到会多一些)
     */
    
    //新增异常捕获方法
    /*
     @try...@catch...@finally
     */
}

void test3(){
    //类
    /*
     .h 类的声明文件，用于声明成员变量、方法。关键词：@interface @end。
     .m 类的实现文件，用于实现.h中声明的方法。关键字：@implement @end。
     */
    
    //方法
    /*
     方法的声明和实现，都必须以 + - 开头
     +  表示类方法（静态方法）
     -  表示对象方法（动态方法）
     在.h中声明的所有方法作用域都是 类方法，不能更改。
     */
    
    //成员变量
    /*
     成员变量的作用域有3种：
     @public
     @private
     @protected
     */
}

//例如，车的类
//车类的申明
@interface Car : NSObject
{
    //类的属性
    
    @public
    int lunzi;//轮子
    NSString *color;//颜色
    int speed;//速度
}
//类的行为
/*
 //无参方法申明、实现和调用
 */
-(void) run;//定义一个无参，午返回值的方法
-(void) stop;
/*
 //有参方法申明、实现和调用
 -（返回值类型）方法名1：（参数类型）参数名；//有一个参数的方法
 -（返回值类型）方法名1：（参数类型1）参数名1 and:（参数类型2）参数名2；//有两个参数的方法
 
 */
-(int)sum:(int) a and:(int) b;
@end

//车类的实现
@implementation Car
//行为的具体描述
-(void) run{
    NSLog(@"...run");
}
-(void) stop{
    NSLog(@"...stop");
}
-(int)sum:(int) a and:(int) b{
    return a+b;
}
@end

//案例：加法计算器的实现
@interface Calculate : NSObject
-(int)sum:(int)a and: (int)b;
@end

@implementation Calculate
-(int)sum:(int)a and: (int)b{
    return a+b;
}
@end

#pragma mark 对象的内存存储
#pragma mark -
//对象的内存存储
/*
 内存栈区    内存堆区     内存代码区
 
 person1    _name       Person
            _age
            _gender     _name
                        _age
                        _gender
 person2    _name
            _age        -(void)run;
            _gender     -(void)stop;
 
 */

typedef enum{red,black,blue,green} Color1;
enum Color2{red1,black1};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //创建Car类型的对象
        Car *car1 = [Car new];
        //初始化对象
        car1->lunzi = 4;
        car1->speed = 120;
        car1->color = @"blue";
        //调用方法
        [car1 run];
        [car1 stop];
        
        //案例：计算器
        Calculate *cal = [Calculate new];
        //多参数有返回值函数的调用
        int result = [cal sum:10 and:20];
        NSLog(@"计算出来的结果是：%d",result);
        
    }
    return 0;
}
