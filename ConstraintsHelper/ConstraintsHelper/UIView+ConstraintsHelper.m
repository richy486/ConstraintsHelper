//
//  UIView+ConstraintsHelper.m
//  ConstraintsHelper
//
//  Created by Richard Adem on 17/06/2015.
//  Copyright (c) 2015 Richard Adem. All rights reserved.
//

#import "UIView+ConstraintsHelper.h"

@interface VFLManager()
@property (nonatomic) NSLayoutFormatOptions options;
@property (nonatomic, strong) NSDictionary *metrics;
@property (nonatomic, strong) NSDictionary *views;
@property (nonatomic, assign) UIView *view;
@end

@implementation VFLManager

- (id) initOnView:(UIView*) view withOptions:(NSLayoutFormatOptions)opts metrics:(NSDictionary *)metrics views:(NSDictionary *)views {
    self = [super init];
    if (self) {
        self.view = view;
        self.options = opts;
        self.metrics = metrics;
        self.views = views;
    }
    return self;
}
- (void) add:(NSString*) vflString {
    [self.view addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:vflString
                                                                       options:self.options
                                                                       metrics:self.metrics
                                                                         views:self.views]];
}

@end

@implementation UIView (ConstraintsHelper)

- (void) setVFLWithOptions:(NSLayoutFormatOptions)opts metrics:(NSDictionary *)metrics views:(NSDictionary *)views inBlock:(void (^)(VFLManager *vflManager))block {
    VFLManager *vflManager = [[VFLManager alloc] initOnView:self withOptions:opts metrics:metrics views:views];
    if (block) {
        block(vflManager);
    }
}

@end
