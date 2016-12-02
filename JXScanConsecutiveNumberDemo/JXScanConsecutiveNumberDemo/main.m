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
        NSString *string = @"Hello132634523-345336World65434223";
        NSLog(@"----- %@ -----", string);
        [string jx_scanConsecutiveNumberWithCallback:^(NSString *numberString, BOOL isLast, BOOL *stop) {
            NSLog(@"%@", numberString);
        }];
        
        // test2
        string = @"hello88kkk666ooo";
        NSLog(@"----- %@ -----", string);
        [string jx_scanConsecutiveNumberWithCallback:^(NSString *numberString, BOOL isLast, BOOL *stop) {
            NSLog(@"%@", numberString);
            if ([numberString isEqualToString:@"88"]) {
                // 停止扫描
                *stop = YES;
            }
        }];
        
        // test3
        string = @"834053450";
        NSLog(@"----- %@ -----", string);
        [string jx_scanConsecutiveNumberWithCallback:^(NSString *numberString, BOOL isLast, BOOL *stop) {
            NSLog(@"%@", numberString);
        }];
        
        // test4
        string = @"12345Hello";
        NSLog(@"----- %@ -----", string);
        [string jx_scanConsecutiveNumberWithCallback:^(NSString *numberString, BOOL isLast, BOOL *stop) {
            NSLog(@"%@", numberString);
        }];
    }
    return 0;
}
