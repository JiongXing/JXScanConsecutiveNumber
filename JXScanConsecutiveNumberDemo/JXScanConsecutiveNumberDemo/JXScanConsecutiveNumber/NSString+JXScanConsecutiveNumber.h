//
//  NSString+JXScanConsecutiveNumber.h
//  JXScanConsecutiveNumberDemo
//
//  Created by JiongXing on 2016/11/29.
//  Copyright © 2016年 JiongXing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (JXScanConsecutiveNumber)

/// 扫描字符串中的连续数字。每扫描完成一段数字，就回调一次。
- (void)jx_scanConsecutiveNumberWithCallback:(void (^)(NSString *numberString, BOOL isLast))callback;

@end
