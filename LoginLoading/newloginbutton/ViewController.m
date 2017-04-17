//
//  ViewController.m
//  newloginbutton
//
///  Created by OCS DEV on 12/04/17.
//  Copyright © 2017 Oclocksoftware. All rights reserved.
//

#import "ViewController.h"
#import "APLoadingButton.h"
#import "secondViewController.h"

@interface ViewController ()<UITextFieldDelegate>
{
    APLoadingButton *loginButton;
    UIImageView *backgroundImage;
    UITextField *username,*password;
    
}
@property (strong, nonatomic) IBOutlet UIImageView *backgroundView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createPresentControllerButton];


}
- (void)createPresentControllerButton{
    
    //Added Login Button
    loginButton = [[APLoadingButton alloc] initWithFrame:CGRectMake(20, CGRectGetHeight(self.view.bounds) - (40 + 350), [UIScreen mainScreen].bounds.size.width - 40, 40)];
      [loginButton setBackgroundColor:[UIColor purpleColor]];
    [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(PresentViewController:) forControlEvents:UIControlEventTouchUpInside];
    [_backgroundView addSubview:loginButton];
    
   username = [[UITextField alloc] initWithFrame:CGRectMake(20, CGRectGetHeight(self.view.bounds) - (40 + 450), [UIScreen mainScreen].bounds.size.width - 40, 40)];
    username.borderStyle = UITextBorderStyleRoundedRect;
    username.font = [UIFont systemFontOfSize:15];
    username.placeholder = @"Username";
    username.autocorrectionType = UITextAutocorrectionTypeNo;
    username.returnKeyType = UIReturnKeyDone;
    username.clearButtonMode = UITextFieldViewModeWhileEditing;
    username.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    username.delegate = self;
    [_backgroundView addSubview:username];
    
   password = [[UITextField alloc] initWithFrame:CGRectMake(20, CGRectGetHeight(self.view.bounds) - (40 + 400), [UIScreen mainScreen].bounds.size.width - 40, 40)];
    password.borderStyle = UITextBorderStyleRoundedRect;
    password.font = [UIFont systemFontOfSize:15];
    password.placeholder = @"Password";
    password.autocorrectionType = UITextAutocorrectionTypeNo;
    password.returnKeyType = UIReturnKeyDone;
    password.clearButtonMode = UITextFieldViewModeWhileEditing;
    password.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    password.delegate = self;
    [_backgroundView addSubview:password];
    
   
    UILabel *fromLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, CGRectGetHeight(self.view.bounds) - (40 + 500), [UIScreen mainScreen].bounds.size.width - 40, 40)];
    fromLabel.text = @"Please enter all TextField";
    fromLabel.numberOfLines = 1;
    fromLabel.font = [UIFont systemFontOfSize:17];
    fromLabel.adjustsFontSizeToFitWidth = YES;
    fromLabel.minimumScaleFactor = 10.0f/12.0f;
    fromLabel.clipsToBounds = YES;
    fromLabel.backgroundColor = [UIColor clearColor];
    fromLabel.textColor = [UIColor whiteColor];
    fromLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:fromLabel];
    
    
    
}


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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
