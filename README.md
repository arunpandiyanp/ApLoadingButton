# APLoadingButton
Loading Button in objective c

# Installation

## Manually
add <b>APLoadingButton</b> and <b>APSpinLayer</b> File in your Project

import your view controller in  #import "APLoadingButton.h"

# Usage


Add `APLoadingButton`
```objc
     APLoadingButton *loginButton = [[APLoadingButton alloc] initWithFrame:CGRectMake(20, CGRectGetHeight(self.view.bounds) - (40 + 80), [UIScreen mainScreen].bounds.size.width - 40, 40)];
      [loginButton setBackgroundColor:[UIColor purpleColor]];
    [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(PresentViewController:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginButton];
   ```
    
    
  <b> Add Action </b>
  
  
   ```objc
    - (void)PresentViewController:(APLoadingButton *)button
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        
       if (username.text  && [password.text length] > 1 )
        {
        [button succeedAnimationWithCompletion:^{
             secondViewController *Checkview=[self.storyboard instantiateViewControllerWithIdentifier:@"Checkview"];
            
            [self presentViewController:Checkview animated:NO completion:nil];
        }];
     
        }else{
            [button failedAnimationWithCompletion:^{
            }];
        }
    });
}
```
####Credits
* August (https://www.cocoacontrols.com/controls/artransitionanimator) for ransition animation in second view controller button.

License
-------------------------------------------------------
<b>The MIT License (MIT)

Copyright (c) 2017 Arun Pandiyan



Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.</b>
