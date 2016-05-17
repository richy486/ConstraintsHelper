# ConstraintsHelper

UIView category to have shorter lines to add constraints.

Usage:

    #import "UIView+ConstraintsHelper.h"

    [self.view setVFLWithOptions:0 metrics:metrics views:views inBlock:^(VFLManager *vflManager) {
        [vflManager add:@"H:|-[batView]-|"];
        [vflManager add:@"V:|-[batView]-|"];
    }];

Swift version in gist form at:
https://gist.github.com/richy486/940ac0a5dfb1781bdf52ff4bf6cf11b6
