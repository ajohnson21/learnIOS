//
//  ALJViewController.m
//  CrystalBall
//
//  Created by Austen Johnson on 5/28/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import "ALJViewController.h"
#import "ALJCrystalBall.h"
#import <AudioToolbox/AudioToolbox.h>


@interface ALJViewController ()

@end

@implementation ALJViewController
{
    SystemSoundID soundEffect;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"crystal_ball" ofType:@"mp3"];
    NSURL *soundURL = [NSURL fileURLWithPath:soundPath];
    AudioServicesCreateSystemSoundID(CFBridgingRetain(soundURL), &soundEffect);
    
    self.crystalBall = [[ALJCrystalBall alloc] init];
    self.backgroundImageView.animationImages = [[NSArray alloc] initWithObjects:
                                                [UIImage imageNamed:@"cb00001"],
                                                [UIImage imageNamed:@"cb00002"],
                                                [UIImage imageNamed:@"cb00003"],
                                                [UIImage imageNamed:@"cb00004"],
                                                [UIImage imageNamed:@"cb00005"],
                                                [UIImage imageNamed:@"cb00006"],
                                                [UIImage imageNamed:@"cb00007"],
                                                [UIImage imageNamed:@"cb00008"],
                                                [UIImage imageNamed:@"cb00009"],
                                                [UIImage imageNamed:@"cb00010"],
                                                [UIImage imageNamed:@"cb00011"],
                                                [UIImage imageNamed:@"cb00012"],
                                                [UIImage imageNamed:@"cb00013"],
                                                [UIImage imageNamed:@"cb00014"],
                                                [UIImage imageNamed:@"cb00015"],
                                                [UIImage imageNamed:@"cb00016"],
                                                [UIImage imageNamed:@"cb00017"],
                                                [UIImage imageNamed:@"cb00018"],
                                                [UIImage imageNamed:@"cb00019"],
                                                [UIImage imageNamed:@"cb00020"],
                                                [UIImage imageNamed:@"cb00021"],
                                                [UIImage imageNamed:@"cb00022"],
                                                [UIImage imageNamed:@"cb00023"],
                                                [UIImage imageNamed:@"cb00024"],
                                                [UIImage imageNamed:@"cb00025"],
                                                [UIImage imageNamed:@"cb00026"],
                                                [UIImage imageNamed:@"cb00027"],
                                                [UIImage imageNamed:@"cb00028"],
                                                [UIImage imageNamed:@"cb00029"],
                                                [UIImage imageNamed:@"cb00030"],
                                                [UIImage imageNamed:@"cb00031"],
                                                [UIImage imageNamed:@"cb00032"],
                                                [UIImage imageNamed:@"cb00033"],
                                                [UIImage imageNamed:@"cb00034"],
                                                [UIImage imageNamed:@"cb00035"],
                                                [UIImage imageNamed:@"cb00036"],
                                                [UIImage imageNamed:@"cb00037"],
                                                [UIImage imageNamed:@"cb00038"],
                                                [UIImage imageNamed:@"cb00039"],
                                                [UIImage imageNamed:@"cb00040"],
                                                [UIImage imageNamed:@"cb00041"],
                                                [UIImage imageNamed:@"cb00042"],
                                                [UIImage imageNamed:@"cb00043"],
                                                [UIImage imageNamed:@"cb00044"],
                                                [UIImage imageNamed:@"cb00045"],
                                                [UIImage imageNamed:@"cb00046"],
                                                [UIImage imageNamed:@"cb00047"],
                                                [UIImage imageNamed:@"cb00048"],
                                                [UIImage imageNamed:@"cb00049"],
                                                [UIImage imageNamed:@"cb00050"],
                                                [UIImage imageNamed:@"cb00051"],
                                                [UIImage imageNamed:@"cb00052"],
                                                [UIImage imageNamed:@"cb00053"],
                                                [UIImage imageNamed:@"cb00054"],
                                                [UIImage imageNamed:@"cb00055"],
                                                [UIImage imageNamed:@"cb00056"],
                                                [UIImage imageNamed:@"cb00057"],
                                                [UIImage imageNamed:@"cb00058"],
                                                [UIImage imageNamed:@"cb00059"],
                                                [UIImage imageNamed:@"cb00060"], nil];
    
    
    self.backgroundImageView.animationDuration = 2.5;
    self.backgroundImageView.animationRepeatCount = 1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Prediction

- (void)makePrediction;
{
    [self.backgroundImageView startAnimating];
    self.predictionLabel.text = [self.crystalBall randomPrediction];
    AudioServicesPlaySystemSound(soundEffect);
    
    [UIView animateWithDuration:6.0 animations:^{
        self.predictionLabel.alpha = 1.0;
    }];

}

#pragma mark - Motion Events

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0;
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake)
    {
        [self makePrediction];
    }
}

#pragma mark - Touches Event

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0;

}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self makePrediction];
}

@end
