//
//  UIView+ConstraintsHelper.h
//  ConstraintsHelper
//
//  Created by Richard Adem on 17/06/2015.
//  Copyright (c) 2015 Richard Adem. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VFLManager : NSObject


- (id) initOnView:(UIView*) view withOptions:(NSLayoutFormatOptions)opts metrics:(NSDictionary *)metrics views:(NSDictionary *)views;
- (void) add:(NSString*) vflString;

@end

@interface UIView (ConstraintsHelper)

//[self.view setVFLWithMetrics:metrics views:views inBlock:^(VFLManager *vflManager){
//    [vflManager add:@"H:|-[_startGameButton]-|"];
//}];

- (void) setVFLWithOptions:(NSLayoutFormatOptions)opts metrics:(NSDictionary *)metrics views:(NSDictionary *)views inBlock:(void (^)(VFLManager *vflManager))block;
@end
