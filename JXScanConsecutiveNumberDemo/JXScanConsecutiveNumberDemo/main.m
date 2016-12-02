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
        [string jx_scanConsecutiveNumberWithCallback:^(NSString *numberString, BOOL isLast) {
            NSLog(@"%@", numberString);
        }];
        
        // test2
        NSLog(@"----- test2: -----");
        string = @"hello";
        [string jx_scanConsecutiveNumberWithCallback:^(NSString *numberString, BOOL isLast) {
            NSLog(@"%@", numberString);
        }];
        
        // test3
        NSLog(@"----- test3: -----");
        string = @"834053450";
        [string jx_scanConsecutiveNumberWithCallback:^(NSString *numberString, BOOL isLast) {
            NSLog(@"%@", numberString);
        }];
        
        // test4
        NSLog(@"----- test4: -----");
        string = @"12345Hello";
        [string jx_scanConsecutiveNumberWithCallback:^(NSString *numberString, BOOL isLast) {
            NSLog(@"%@", numberString);
        }];
    }
    return 0;
}
