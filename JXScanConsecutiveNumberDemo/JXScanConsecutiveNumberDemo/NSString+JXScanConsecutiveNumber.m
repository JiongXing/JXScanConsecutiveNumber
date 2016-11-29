//
//  NSString+JXScanConsecutiveNumber.m
//  JXScanConsecutiveNumberDemo
//
//  Created by JiongXing on 2016/11/29.
//  Copyright © 2016年 JiongXing. All rights reserved.
//

#import "NSString+JXScanConsecutiveNumber.h"

@implementation NSString (JXScanConsecutiveNumber)

- (NSMutableArray<NSString *> *)scanConsecutiveNumber {
    NSMutableArray<NSString *> *array = [NSMutableArray array];
    NSMutableString *numberString = nil;
    
    for (NSInteger index = 0; index < self.length; ++index) {
        unichar ch = [self characterAtIndex:index];
        if (isnumber(ch)) {
            if (!numberString) {
                numberString = [NSMutableString string];
            }
            [numberString appendString:[self substringWithRange:NSMakeRange(index, 1)]];
        }
        else {
            if (numberString) {
                [array addObject:numberString];
                numberString = nil;
            }
        }
    }
    if (numberString) {
        [array addObject:numberString];
    }
    return array.count > 0 ? array : nil;
}

@end
