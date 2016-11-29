//
//  NSString+JXScanConsecutiveNumber.h
//  JXScanConsecutiveNumberDemo
//
//  Created by JiongXing on 2016/11/29.
//  Copyright © 2016年 JiongXing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (JXScanConsecutiveNumber)

/// 扫描连续的数字。返回多段连续的数字，没有数字则返回nil。
- (nullable NSMutableArray<NSString *> *)scanConsecutiveNumber;

@end
