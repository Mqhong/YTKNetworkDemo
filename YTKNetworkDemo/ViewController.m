//
//  ViewController.m
//  YTKNetworkDemo
//
//  Created by 孟庆洪 on 2018/5/14.
//  Copyright © 2018年 mqhong. All rights reserved.
//

#import "ViewController.h"
#import "RegisterApi.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    [self didSucceed];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"????");
    [self didSucceed];
}

-(void)didSucceed{
    NSString *username = @"mqhong";
    NSString *password = @"123456";
    RegisterApi *api = [[RegisterApi alloc] initWithUsername:username password:password];
    [api startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        NSLog(@"succeed");
        NSLog(@"%@",request);
        
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        NSLog(@"failure");
        NSLog(@"\t%@",request);
        
    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
