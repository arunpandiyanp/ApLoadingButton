//
//  APLoadingButton.h
//  newloginbutton
//
//  Created by OCS DEV on 12/04/17.
//  Copyright © 2017 Oclocksoftware. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^ApAnimationCompletion)();

@interface APLoadingButton : UIButton

-(void)failedAnimationWithCompletion:(ApAnimationCompletion)completion;

-(void)succeedAnimationWithCompletion:(ApAnimationCompletion)completion;

@end
