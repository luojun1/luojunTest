//
//  blockTest.m
//  luojunTest
//
//  Created by luojun6 on 2018/11/7.
//  Copyright © 2018 luojun6. All rights reserved.
//

#import "blockTest.h"

typedef void (^BlockType)(void);

@interface blockTest ()

@property (nonatomic, copy) BlockType block;

@end

@implementation blockTest

- (void) FIrstTest {
    self.block = ^(){
        NSLog(@"这是一个block");
    };
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

