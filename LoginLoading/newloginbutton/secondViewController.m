//
//  secondViewController.m
//  newloginbutton
//
//  Created by OCS DEV on 12/04/17.
//  Copyright © 2017 Oclocksoftware. All rights reserved.
//

#import "secondViewController.h"
#import "ARTransitionAnimator.h"
#import "ViewController.h"

@interface secondViewController ()<UIViewControllerTransitioningDelegate>
@property (nonatomic, strong) ARTransitionAnimator *transitionAnimator;

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *playButton = [[UIButton alloc]initWithFrame:CGRectMake(190.0, 390.0, 100.0, 30.0)];
     
    [playButton setTitle:@"Back" forState:UIControlStateNormal];
     playButton.backgroundColor = [UIColor clearColor];
    [playButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal ];
    [playButton addTarget:self action:@selector(playAction) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:playButton];
    
    
    // Do any additional setup after loading the view.
}
-(void)playAction
{
    self.transitionAnimator = [[ARTransitionAnimator alloc] init];
    self.transitionAnimator.transitionDuration = 0.6;
    self.transitionAnimator.transitionStyle = ARTransitionStyleMaterial|ARTransitionStyleLeftToRight;
    

    ViewController *first=[self.storyboard instantiateViewControllerWithIdentifier:@"first"];
    first.modalPresentationStyle = UIModalPresentationCustom;
    first.transitioningDelegate = self.transitionAnimator;
    [self presentViewController:first animated:YES completion:nil];
    
    

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
