//
//  Person.m
//  OCLesson-08-02-KVC
//
//  Created by lanouhn on 16/1/8.
//  Copyright (c) 2016年 chenxiaolong. All rights reserved.
//

#import "Person.h"

@implementation Person


// 重写该方法, 避免找不到 key 相对应的属性时, 引起的 crash 问题
// 只要使用 KVC 进行赋值, 找不到与 key 对应的属性, 都会调用该方法, 空实现就能避免 crash 问题
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}


// 使用 KVC 进行取值时, 如果取不到与 key 值对应的属性时, 就会调用这个方法, 此时如果在该类中没有实现这个方法就会引起 crash , 只要重写该方法, 返回 nil, 就可以避免 crash 问题
-(id)valueForUndefinedKey:(NSString *)key{
    return nil;
}








- (void)dealloc
{
    self.name = nil;
    self.gender = nil;
    self.stu = nil;
    [super dealloc];
}







@end
