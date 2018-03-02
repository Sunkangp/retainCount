//
//  ViewController.m
//  他天天让人
//
//  Created by sunkang on 2018/3/2.
//  Copyright © 2018年 sunkang. All rights reserved.
//

#import "ViewController.h"
#import "BViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    BViewController *vc = [BViewController new];
    [self presentViewController:vc animated:YES completion:nil];
}




@end
