//
//  ViewController.m
//  CustomTest
//
//  Created by luojun6 on 2019/1/10.
//  Copyright © 2019 luojun6. All rights reserved.
//

#import "ViewController.h"


typedef int (^blk_t)(void);

@interface ViewController ()

@end

@implementation ViewController

-(void) globalBlock {
    __block int a = 10;
    blk_t block = ^{
        
        NSLog(@"block test %d",a);
        return 1;
    };
//    block();
    
//    __block int val =10;
//    blkt1 s= ^{
//        return ++val;};
//    s();
//    blkt1 h = [s copy];
//    h();

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self globalBlock];
    
    [self foo];
}

-(void) foo
{
    __block int i = 1024;
    int j = 1;
    void (^blk)(void);
//    void (^blkInHeap)(void);
    blk = ^{ printf("1111\n");};//blk在栈里
//    blkInHeap = Block_copy(blk);//blkInHeap在堆里
    
}

@end
