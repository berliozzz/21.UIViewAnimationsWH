e//
//  ViewController.m
//  AnimationsHW21
//
//  Created by Nikolay Berlioz on 02.11.15.
//  Copyright © 2015 Nikolay Berlioz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//-----------------------   view in center   ----------------------------
@property (weak, nonatomic) UIView *propView1;
@property (weak, nonatomic) UIView *propView2;
@property (weak, nonatomic) UIView *propView3;
@property (weak, nonatomic) UIView *propView4;

//-----------------------   view in angles   ----------------------------

@property (weak, nonatomic) UIView *redView;
@property (weak, nonatomic) UIView *yellowView;
@property (weak, nonatomic) UIView *greenView;
@property (weak, nonatomic) UIView *blueView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  
#pragma mark - begin coordinate View
    
    //-----------------------   view in center   ----------------------------
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(40, 40, 100, 100)];
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(40, 240, 100, 100)];
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(40, 440, 100, 100)];
    UIView *view4 = [[UIView alloc] initWithFrame:CGRectMake(40, 630, 100, 100)];

    view1.backgroundColor = [UIColor brownColor];
    [self.view addSubview:view1];
    
    view2.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:view2];
    
    view3.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view3];
    
    view4.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:view4];
    
    self.propView1 = view1;
    self.propView2 = view2;
    self.propView3 = view3;
    self.propView4 = view4;
    
    //-----------------------   view in angles   ----------------------------
    UIView *redV = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    UIView *yellowV = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.view.bounds) - 40, 0, 40, 40)];
    UIView *greenV = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.view.bounds) - 40, CGRectGetHeight(self.view.bounds) - 40, 40, 40)];
    UIView *blueV = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.view.bounds) - 40, 40, 40)];
    
    redV.backgroundColor = [UIColor redColor];
    [self.view addSubview:redV];
    
    yellowV.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:yellowV];
    
    greenV.backgroundColor = [UIColor greenColor];
    [self.view addSubview:greenV];
    
    blueV.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueV];
    
    self.redView = redV;
    self.yellowView = yellowV;
    self.greenView = greenV;
    self.blueView = blueV;
    

    
}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
#pragma mark - Center view animation
    //---------------------------------------------------------------------------------------------
    //--------------------------   Center view animation   ----------------------------------------
    //---------------------------------------------------------------------------------------------
    
    /*****************************    view1 animation    ******************************************/
    [UIView animateWithDuration:5
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse
                     animations:^{
                         self.propView1.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.propView1.frame) / 2 - 40, 90);
                         self.propView1.backgroundColor = [self randomColor];
                     }
                     completion:^(BOOL finished) {
                         NSLog(@"frame self.propView1 = %@", NSStringFromCGRect(self.propView1.frame));
                     }];
   
    /*****************************    view2 animation    ******************************************/
    [UIView animateWithDuration:5
                          delay:0
                        options:UIViewAnimationOptionCurveEaseIn | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse
                     animations:^{
                         self.propView2.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.propView2.frame) / 2 - 40, 290);
                         self.propView2.backgroundColor = [self randomColor];
                     }
                     completion:^(BOOL finished) {
                         NSLog(@"frame self.propView2 = %@", NSStringFromCGRect(self.propView2.frame));
                     }];
    
    /*****************************    view3 animation    ******************************************/
    [UIView animateWithDuration:5
                          delay:0
                        options:UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse
                     animations:^{
                         self.propView3.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.propView3.frame) / 2 - 40, 490);
                         self.propView3.backgroundColor = [self randomColor];
                     }
                     completion:^(BOOL finished) {
                         NSLog(@"frame self.propView3 = %@", NSStringFromCGRect(self.propView3.frame));
                     }];
   
    /*****************************    view4 animation    ******************************************/
    [UIView animateWithDuration:5
                          delay:0
                        options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse
                     animations:^{
                         self.propView4.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.propView4.frame) / 2 - 40, 680);
                         self.propView4.backgroundColor = [self randomColor];
                     }
                     completion:^(BOOL finished) {
                         NSLog(@"frame self.propView4 = %@", NSStringFromCGRect(self.propView4.frame));
                     }];
    
    #pragma mark - Angles view animation
    //---------------------------------------------------------------------------------------------
    //--------------------------   Angles view animation   ----------------------------------------
    //---------------------------------------------------------------------------------------------
    /*****************************    redV animation    ******************************************/
    [UIView animateWithDuration:5
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionRepeat
                     animations:^{
                         self.redView.frame = [self locationView:self.redView];
                         self.redView.transform = CGAffineTransformMakeRotation(M_PI);
                     }
                     completion:^(BOOL finished) {
                         
                     }];
    
    /*****************************    yellowV animation    ******************************************/
    [UIView animateWithDuration:5
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionRepeat
                     animations:^{
                         self.yellowView.frame = [self locationView:self.yellowView];
                         self.yellowView.transform = CGAffineTransformMakeRotation(M_PI);
                     }
                     completion:^(BOOL finished) {
                         
                     }];
    
    /*****************************    greenV animation    ******************************************/
    [UIView animateWithDuration:5
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionRepeat
                     animations:^{
                         self.greenView.frame = [self locationView:self.greenView];
                         self.greenView.transform = CGAffineTransformMakeRotation(M_PI);
                     }
                     completion:^(BOOL finished) {
                         
                     }];
    
    /*****************************    blueV animation    ******************************************/
    [UIView animateWithDuration:5
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionRepeat
                     animations:^{
                         self.blueView.frame = [self locationView:self.blueView];
                         self.blueView.transform = CGAffineTransformMakeRotation(M_PI);
                     }
                     completion:^(BOOL finished) {
                         
                     }];
}

#pragma mark - method assignment frame to view
//change location and color view
- (CGRect) locationView: (UIView*) view
{
    // If view location in top left
    if (CGRectEqualToRect(view.frame, CGRectMake(0, 0, 40, 40)))
    {
        view.frame = CGRectMake(CGRectGetWidth(self.view.bounds) - 40, 0, 40, 40);
        view.backgroundColor = [UIColor yellowColor];
    }
    // If view location in top right
    else if (CGRectEqualToRect(view.frame, CGRectMake(CGRectGetWidth(self.view.bounds) - 40, 0, 40, 40)))
    {
        view.frame = CGRectMake(CGRectGetWidth(self.view.bounds) - 40, CGRectGetHeight(self.view.bounds) - 40, 40, 40);
        view.backgroundColor = [UIColor greenColor];
    }
    // If view location in bottom right
    else if (CGRectEqualToRect(view.frame, CGRectMake(CGRectGetWidth(self.view.bounds) - 40, CGRectGetHeight(self.view.bounds) - 40, 40, 40)))
    {
        view.frame = CGRectMake(0, CGRectGetHeight(self.view.bounds) - 40, 40, 40);
        view.backgroundColor = [UIColor blueColor];
    }
    // If view location in bottom left
    else if (CGRectEqualToRect(view.frame, CGRectMake(0, CGRectGetHeight(self.view.bounds) - 40, 40, 40)))
    {
        view.frame = CGRectMake(0, 0, 40, 40);
        view.backgroundColor = [UIColor redColor];
    }
    
    return view.frame;
}

- (UIColor*) randomColor
{
    CGFloat red = (float)(arc4random() % 256) / 255;
    CGFloat green = (float)(arc4random() % 256) / 255;
    CGFloat blue = (float)(arc4random() % 256) / 255;

    return [UIColor colorWithRed:red green:green blue:blue alpha:1.f];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






@end
