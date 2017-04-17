//
//  APSpinLayer.h
//  newloginbutton
//
//  Created by OCS DEV on 12/04/17.
//  Copyright © 2017 Oclocksoftware. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface APSpinLayer : CAShapeLayer
- (instancetype)initWithFrame:(CGRect)frame;

- (void)beginAnimation;

- (void)stopAnimation;
@end
