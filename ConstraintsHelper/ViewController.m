//
//  ViewController.m
//  ConstraintsHelper
//
//  Created by Richard Adem on 17/06/2015.
//  Copyright (c) 2015 Richard Adem. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ConstraintsHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *redView = [[UIView alloc] init];
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    UIView *blueView = [[UIView alloc] init];
    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    NSDictionary *metrics = @{@"width": @(100), @"leftSpacing": @(50), @"topSpacing": @(50), @"height": @(20)};
    NSDictionary *views = NSDictionaryOfVariableBindings(redView, blueView);
    [self.view setVFLWithOptions:0 metrics:metrics views:views inBlock:^(VFLManager *vflManager) {
        [vflManager add:@"H:|-leftSpacing-[redView(width)]"];
        [vflManager add:@"H:|-[blueView]-|"];
        [vflManager add:@"V:|-topSpacing-[redView]-(5)-[blueView(height)]-(8)-|"];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
