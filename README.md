# ConstraintsHelper

UIView category to have shorter lines to add constraints.

Usage:

    #import "UIView+ConstraintsHelper.h"

    [self.view setVFLWithMetrics:metrics views:views inBlock:^(VFLManager *vflManager){
        [vflManager add:@"H:|-[batView]-|"];
        [vflManager add:@"V:|-[batView]-|"];
    }];