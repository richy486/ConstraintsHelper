# ConstraintsHelper

UIView category to have shorter lines to add constraints.

Usage:

    #import "UIView+ConstraintsHelper.h"

    [self.view setVFLWithOptions:0 metrics:metrics views:views inBlock:^(VFLManager *vflManager) {
        [vflManager add:@"H:|-[batView]-|"];
        [vflManager add:@"V:|-[batView]-|"];
    }];

Swift version in gist form at:

https://gist.github.com/richy486/b95786706276fd58c4dfe811401090a7
