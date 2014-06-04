//
//  ALJViewController.h
//  CrystalBall
//
//  Created by Austen Johnson on 5/28/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ALJCrystalBall;

@interface ALJViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (nonatomic) ALJCrystalBall * crystalBall;

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
- (void)makePrediction;

@end
