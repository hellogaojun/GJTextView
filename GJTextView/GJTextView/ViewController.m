//
//  ViewController.m
//  GJTextView
//
//  Created by gaojun on 16/9/10.
//  Copyright © 2016年 gaojun. All rights reserved.
//

#import "ViewController.h"
#import "GJTextView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    GJTextView *textView = [[GJTextView alloc]init];
    textView.frame = CGRectMake(10, 50, 100, 200);
    textView.backgroundColor = [UIColor lightGrayColor];
    textView.placeholder = @"我是占位符";
    textView.placeholderFont = [UIFont systemFontOfSize:19];
    textView.placeholderColor = [UIColor redColor];
    [self.view addSubview:textView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
