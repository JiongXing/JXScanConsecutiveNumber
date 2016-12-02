//
//  NSString+JXScanConsecutiveNumber.m
//  JXScanConsecutiveNumberDemo
//
//  Created by JiongXing on 2016/11/29.
//  Copyright © 2016年 JiongXing. All rights reserved.
//

#import "NSString+JXScanConsecutiveNumber.h"

@implementation NSString (JXScanConsecutiveNumber)

- (void)jx_scanConsecutiveNumberWithCallback:(void (^)(NSString *, NSRange, BOOL, BOOL *))callback {
    if (!callback) {
        return;
    }
    
    NSMutableString *numberString = nil;
    NSInteger loc = 0;
    BOOL stop = NO;
    
    for (NSInteger index = 0; index < self.length; ++index) {
        unichar ch = [self characterAtIndex:index];
        if (isnumber(ch)) {
            if (!numberString) {
                numberString = [NSMutableString string];
                loc = index;
            }
            [numberString appendString:[self substringWithRange:NSMakeRange(index, 1)]];
        }
        else {
            if (numberString) {
                callback(numberString, NSMakeRange(loc, numberString.length), NO, &stop);
                numberString = nil;
                if (stop) {
                    break;
                }
            }
        }
    }
    if (numberString) {
        callback(numberString, NSMakeRange(loc, numberString.length), YES, &stop);
    }
}

@end
