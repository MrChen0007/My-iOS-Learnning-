//
//  main.m
//  OCLesson-08-02-KVC
//
//  Created by lanouhn on 16/1/8.
//  Copyright (c) 2016年 chenxiaolong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
    
    // 创建 person 对象
        Person *per = [[Person alloc] init];
        
        // 使用 KVC 进行赋值
        [per setValue:@"lizhiling" forKey:@"name"];
        NSLog(@"%@", [per valueForKey:@"name"]);
        NSLog(@"%@", per.name);
    
    // 创建 student 对象
        Student *stu1 = [[Student alloc] init];
        
        // 给 per 指定上 student
        [per setValue:stu1 forKey:@"stu"];
        // per.stu = stu;
        
        // 使用 KVC 通过 per 给 student 对象赋值
        [per setValue:@"yangmi" forKeyPath:@"stu.name"];
        NSLog(@"%@", [per valueForKeyPath:@"stu.name"]);
        // NSLog(@"%@", per.stu);         ???????
        NSLog(@"%@", stu1.name);
    
        NSDictionary *dic = @{@"name":@"dilireba", @"gender":@"nv", @"age":@18};
    // 使用 KVC 给 per 赋值
        [per setValuesForKeysWithDictionary:dic];
        NSLog(@"%@, %@, %ld", per.name, per.gender, per.age);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }
    return 0;
}
