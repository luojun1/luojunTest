//
//  blockTest.m
//  luojunTest
//
//  Created by luojun6 on 2018/11/7.
//  Copyright © 2018 luojun6. All rights reserved.
//

#import "blockTest.h"

typedef void (^BlockType)(void);

typedef int (^BlockTest) (int,int);

/// 数组元素转换
typedef id(^LXDItemMap)(id item);   //  这里block完成对元素的操作
typedef NSArray *(^LXDArrayMap)(LXDItemMap itemMap);

/// 数组元素筛选
typedef BOOL(^LXDItemFilter)(id item);
typedef NSArray *(^LXDArrayFilter)(LXDItemFilter itemFilter);


@interface blockTest ()

@property (nonatomic, copy) BlockType block;

@property (nonatomic, copy, readonly) LXDArrayMap map;
@property (nonatomic, copy, readonly) LXDArrayFilter filter;

@end

@implementation blockTest



- (void)setFilter:(LXDArrayFilter)filter {}
- (void)setMap:(LXDArrayMap)map {}




- (void) FIrstTest {
//#pragma mark - 筛选数组中大于20的数值并转换成字符串
//    NSArray<NSNumber *> * numbers = @[@10, @15, @99, @66, @25, @28.1, @7.5, @11.2, @66.2];
//    NSArray * result = numbers.filter(^BOOL(NSNumber * item) {
//        return item.doubleValue > 20
//    }).map(^id(NSNumber * item) {
//        return [NSString stringWithFormat: @"string %g", item.doubleValue];
//    });
//
//#pragma mark - 将数组中的字典转换成对应的数据模型
//    NSArray<NSDictionary *> * jsons = @[@{ ... }, @{ ... }, @{ ... }];
//    NSArray<LXDModel *> * models = jsons.map(^id(id item) {
//        return [[LXDModel alloc] initWithJSON: item];
//    })
    
    self.block = ^(){
        NSLog(@"这是一个block");
    };
}

- (int) testbBlockT:(BlockTest)blockBB {
    
    return 1;
}

- (int) parameterOne:(int )a parameterTwo:(int) b blockA: (int (^)(int a, int b))blockC {
    int c;
    c = blockC(a-1, b);
    return c;
}

- (void) testBLock {
    int x ;
    x = [self parameterOne:10 parameterTwo:20 blockA:^int(int a, int b) {
        return a * b;
    }];
}

@end

