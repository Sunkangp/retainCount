//
//  BViewController.m
//  他天天让人
//
//  Created by sunkang on 2018/3/2.
//  Copyright © 2018年 sunkang. All rights reserved.
//

#import "BViewController.h"
#import "HHHHH.h"


@interface BViewController ()
@property (nonatomic, strong) HHHHH *test;
@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    HHHHH *bbb  = [[HHHHH alloc]init];//  alloc 之后  =1
    self.test = bbb;                   //  self.test 指向bbb  =2
    NSLog(@"%lu",(unsigned long)self.test.retainCount);   //打印 2
}
- (void)dealloc {
    NSLog(@"%s",__func__);
    NSLog(@"%lu",(unsigned long)self.test.retainCount);   //打印 2
    [self.test release]; //-1
    NSLog(@"%lu",(unsigned long)self.test.retainCount);   //打印 1
    [self.test release];//或者写self.test = nil;            //释放 =0  调用dealloc
    [super dealloc];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
