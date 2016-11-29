# JXScanConsecutiveNumber

[《扫描找出字符串中的连续数字》](http://www.jianshu.com/p/f60f2c784189)


# 给NSString写个分类
```objectivec
@interface NSString (JXScanConsecutiveNumber)

/// 扫描连续的数字。返回多段连续的数字，没有数字则返回nil。
- (nullable NSMutableArray<NSString *> *)scanConsecutiveNumber;

@end
```

# 简单使用
分别测试字母和数字混合与不混合的几种情况
```objectivec
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
```
输出
```
2016-11-29 14:04:54.613454 JXScanConsecutiveNumberDemo[2499:93969] ----- test1: -----
2016-11-29 14:04:54.613752 JXScanConsecutiveNumberDemo[2499:93969] 132634523
2016-11-29 14:04:54.613779 JXScanConsecutiveNumberDemo[2499:93969] 345336
2016-11-29 14:04:54.613792 JXScanConsecutiveNumberDemo[2499:93969] 65434223
2016-11-29 14:04:54.613801 JXScanConsecutiveNumberDemo[2499:93969] ----- test2: -----
2016-11-29 14:04:54.613817 JXScanConsecutiveNumberDemo[2499:93969] ----- test3: -----
2016-11-29 14:04:54.613836 JXScanConsecutiveNumberDemo[2499:93969] 834053450
2016-11-29 14:04:54.613845 JXScanConsecutiveNumberDemo[2499:93969] ----- test4: -----
2016-11-29 14:04:54.613862 JXScanConsecutiveNumberDemo[2499:93969] 12345
```
