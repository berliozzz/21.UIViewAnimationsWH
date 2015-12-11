//
//  ViewController.m
//  StepMan
//
//  Created by Nikolay Berlioz on 03.11.15.
//  Copyright © 2015 Nikolay Berlioz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic)  UIImageView *imageAnimation;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *stepView = [[UIImageView alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.view.bounds) - 240, 120, 120)];
    stepView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:stepView];
    
    UIImageView *viewBackground = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds))];
    [self.view addSubview:viewBackground];
    
    [self.view bringSubviewToFront:stepView];
    
    UIImage *step1 = [UIImage imageNamed:@"1.png"];
    UIImage *step2 = [UIImage imageNamed:@"2.png"];
    UIImage *step3 = [UIImage imageNamed:@"3.png"];
    UIImage *step4 = [UIImage imageNamed:@"4.png"];
    UIImage *step5 = [UIImage imageNamed:@"5.png"];
    UIImage *step6 = [UIImage imageNamed:@"6.png"];
    UIImage *step7 = [UIImage imageNamed:@"7.png"];
    UIImage *step8 = [UIImage imageNamed:@"8.png"];
    
    UIImage *background = [UIImage imageNamed:@"background.jpg"];
    viewBackground.image = background;
    
    NSArray *imagesArray = [NSArray arrayWithObjects:step1, step2, step3, step4, step5, step6, step7, step8, nil];
    
    stepView.animationImages = imagesArray;
    stepView.animationDuration = 0.8f;
    [stepView startAnimating];
    
    self.imageAnimation = stepView;
}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:5
                          delay:0
                        options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionRepeat
                     animations:^{
                         self.imageAnimation.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.imageAnimation.frame),
                                                                  CGRectGetHeight(self.view.bounds) - 180);
                     }
                     completion:^(BOOL finished) {
                         NSLog(@"%@", NSStringFromCGRect(self.imageAnimation.frame));
                     }];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end





















