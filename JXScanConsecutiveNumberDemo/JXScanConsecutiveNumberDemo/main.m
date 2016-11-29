//
//  main.m
//  JXScanConsecutiveNumberDemo
//
//  Created by JiongXing on 2016/11/29.
//  Copyright © 2016年 JiongXing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+JXScanConsecutiveNumber.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // test1
        NSLog(@"----- test1: -----");
        NSString *string = @"Hello132634523-345336World65434223";
        NSMutableArray<NSString *> *array = [string scanConsecutiveNumber];
        if (array) {
            [array enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                NSLog(@"%@", obj);
            }];
        }
        
        // test2
        NSLog(@"----- test2: -----");
        string = @"hello";
        array = [string scanConsecutiveNumber];
        if (array) {
            [array enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                NSLog(@"%@", obj);
            }];
        }
        
        // test3
        NSLog(@"----- test3: -----");
        string = @"834053450";
        array = [string scanConsecutiveNumber];
        if (array) {
            [array enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                NSLog(@"%@", obj);
            }];
        }
        
        // test4
        NSLog(@"----- test4: -----");
        string = @"12345Hello";
        array = [string scanConsecutiveNumber];
        if (array) {
            [array enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                NSLog(@"%@", obj);
            }];
        }
    }
    return 0;
}
