//
//  ALJViewController.h
//  CrystalBall
//
//  Created by Austen Johnson on 5/28/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ALJViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) NSArray *predictions;
- (IBAction)buttonPressed;

@end
