//
//  main.m
//  OC-05方法
//
//  Created by sjyin on 6/30/15.
//  Copyright (c) 2015 sjyin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

void test(){
    //类方法和对象方法比较
    //对象方法
    /*
     以-号开头
     通过对象调用
     
     */
    //类方法
    /*
     以+号开头
     通过类名调用
     一般当做工具方法使用
     tip:
     不能使用类的成员变量
     
     */
    Car *c = [Car new];
    [c start];
    [c stop];
    
    //匿名类
    //方式一
    [Car new]->_speed;
    //方式二
    [[Car alloc] init]->_speed;
    
}

void test1(){
    //%p %@ 打印出来的对象是不一样的
    /*
     %p   0x01100   空间地址
     %@   <Dog: 0x01100>  类名+空间地址（默认） 实际上调用了类的description对象方法，相当于java中的toString方法。
     %@ NSLOG("%@"，[dog class]) 实际上调用类的description类方法。
     */
}

void test2(){
    //多态条件
    /*
     1 存在继承
     2 存在重写
     */
    //动态类型：
    //程序直到执行时才确定对象所属的类型。
    
    //id类型
    /*
     通用指针类型。弱类型。
     编译时不进行类型检查的类型。
     */
    
    //类对象获取方法
    /*
     Class clazz = [p class];
     Class clazz = [People class];
     */
    
    //SEL
    /*
     SEL其实是对方法的一次包装，将方法包装成SEL类型，去寻找对应的方法地址，直到方法地址就可以调用方法。
     
     手工将方法包装成SEL类型案例如下：
     */
    Car  *car = [Car new];
    //写法一
//    [car start];
    //写法二
    SEL carSel = @selector(start);
    [car performSelector:carSel];
}

void test3(){
    //xcode点语法特性
    /*
     c.speed --> [c getSpeed]/[c setSpeed]  替换，
     该语法是由xcode提供的，
     是get、set这个取决于 点语法 表达式出现在等号的左侧还是右侧
     
     */
    //点语法 注意事项：
    /*
     点语法的本质是转换get/set方法，如果没有get/set方法，则不能使用点语法。
     
     */
}

void test4(){
    // @property关键字介绍和使用
    /*
     @property 是编译器指令 --> 告诉编译器要做什么事情
                          --> 申明属性的get/set方法，这样就不需要手动的写get/set方法。
     
     
     用法：
     @property 类型  变量名
     如：
     @property int age; 
     
     注意事项：
     
     变量名需要在@interface...@end中申明，才能使用@property...@end。
     
     还是需要在.m文件中手工实现，@property只能写在@interface...@end中。
     
     */
}

void test5(){
    //@synthesize关键字介绍及使用
    /*
     @synthesize 是一个编译器指令 --> 在.m文件中定义set/get的方法。
     
     用法：
     @synthesize 变量名；
     @synthesize 变量名 = 实例变量；
     
     例如：@synthesize a = _b; 表示 a 的get/set方法，修改属性b的值。
     
     注意事项：
     @synthesize需要和@property搭配使用。
     
     升级版用法：
     @synthesize 变量名1,变量名2;
     @property 类型 变量1,变量2;
     
     以上是Xcode 4.4 以前的写法，到目前为止为： 6.3
     
     */
}

void test6(){
    //@property 增强使用
    /*
     xcode 4.4 之后，可以只使用@property，不使用@synthesize
     声明和实现_age,_name的get、set方法
     如果，当前类中没有下划线的实例变量，系统会帮助生成。
     
     ===这一点Java确实是做不到===
     
     */
    //如果都是程序在做，那么我们能够修改其业务逻辑吗？
    //答案是可以的--@property下重写get、set方法
    /*
     通过在.m中重写get/set方法来实现，
     注意：如果没有@synthesize ，get/set方法只能重写一个。
     */
}

void test7(){
    //动态类型和静态类型
    /*
     多态：运行不同的类定义相同的方法
     动态类型：程序直到执行时才能确定其类型  比如：Animal dog = [Dog new];
     静态类型：将一个变量定义为特定类的对象  比如：Person p = [Person new];
     */
}

//=============

void test8(){
    //id 介绍
    /*
     万能指针
     
     NSObject 是所有类的基类，可以指向所有对象
     --但是，父类指针指向子类对象的时候会做一个编译检查
     使用 id 可以避免这个问题 -- id是动态类型，不会检查类型。
     
     用法：
     id 变量名称;
     
     例如：
     id obj;
     obj = [Dog new];
     [obj run];
     
     源码解析：
     NSObject的方法返回类型是：instancetype  -- 在IOS 5.0之前就是 id 。
     
     */
}

void test9(){
    //动态类型检测
    /*
     对象在运行时获取其类型的能力被称为内省。
     1 判断类型 -- isKindOfClass
     例如：BOOL isCar = [str isKindOfClass:[Car class]];
     
     2 判断对象 -- isMemberOfClass
     例如：BOOL isCar = [str isMemberOfClass:[Car class]];
     
     3 判断类是否是指定类的子类 -- isSubclassOfClass
     例如：BOOL isSub = [[str class] isSubclassOfClass:[Car class]];
     
     4 判断对象能否响应指定方法 -- respondsToSelector/instancesRespondToSelector
     例如：
     BOOL canRespond = [car respondsToSelector:@selector(run)];
     BOOL canRespond2 = [Car instancesRespondToSelector:@selector(run)];
     
     */
    NSString *str = @"";
    BOOL isCar = [str isMemberOfClass:[Car class]];
    BOOL isSub = [[str class] isSubclassOfClass:[Car class]];
    
    Car* car = [Car new];
    BOOL canRespond = [car respondsToSelector:@selector(run)];
    BOOL canRespond2 = [Car instancesRespondToSelector:@selector(run)];
    
}

void test10(){
    //响应方法
    /*
     */
    Car* car = [Car new];
    //响应无参方法
    [car performSelector:@selector(run)];
    //响应一个参方法
    [car performSelector:@selector(run:) withObject:@"大货车"];
    
}

void test11(){
    //构造方法 -- 用来初始化对象的方法
    /*
     init 方法
     
     [Car new]中new方法的过程：
     1 调用的类方法+alloc分配存储空间，返回未初始化的对象
        Person* p1 = [Person alloc];
     2 调用对象方法-init进行初始化，返回对象本身
        Person* p2 = [person init];
     3 综合
        Person* p = [[Person alloc] init];
     
     解释：
     alloc 的结果：
     1 为该类分配存储空间；2 将该存储空间初始化为0
     init 的结果：
     默认初始化完成以后，所有成员变量的值都是0
     
     */
    //重写构造方法
    /*
     
     
     */
    //自定义构造方法
    /*
     1 一定是对象方法，以减号开头
     2 返回值一般是 id
     3 方法名一般以 initWith 开头
     
     比如：
     - (id)initWithName：(NSString*) name age:(int) age;
     */
}




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test10();
    }
    return 0;
}
