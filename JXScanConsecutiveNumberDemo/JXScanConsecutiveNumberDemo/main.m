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
        [string jx_scanConsecutiveNumberWithCallback:^(NSString *numberString, NSRange range, BOOL isLast, BOOL *stop) {
            NSLog(@"number:%@, range:%@, isLast:%@", numberString, NSStringFromRange(range), isLast ? @"YES" : @"NO");
        }];
        
        // test2
        string = @"hello88kkk666ooo";
        NSLog(@"----- %@ -----", string);
        [string jx_scanConsecutiveNumberWithCallback:^(NSString *numberString, NSRange range, BOOL isLast, BOOL *stop) {
            NSLog(@"number:%@, range:%@, isLast:%@", numberString, NSStringFromRange(range), isLast ? @"YES" : @"NO");
            if ([numberString isEqualToString:@"88"]) {
                // 中断扫描
                *stop = YES;
                NSLog(@"中断扫描");
            }
        }];
        
        // test3
        string = @"834053450";
        NSLog(@"----- %@ -----", string);
        [string jx_scanConsecutiveNumberWithCallback:^(NSString *numberString, NSRange range, BOOL isLast, BOOL *stop) {
            NSLog(@"number:%@, range:%@, isLast:%@", numberString, NSStringFromRange(range), isLast ? @"YES" : @"NO");
        }];
        
        // test4
        string = @"12345Hello";
        NSLog(@"----- %@ -----", string);
        [string jx_scanConsecutiveNumberWithCallback:^(NSString *numberString, NSRange range, BOOL isLast, BOOL *stop) {
            NSLog(@"number:%@, range:%@, isLast:%@", numberString, NSStringFromRange(range), isLast ? @"YES" : @"NO");
        }];
    }
    return 0;
}
