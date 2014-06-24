//
//  ROSViewController.h
//  Roshambo
//
//  Created by Austen Johnson on 6/9/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ROSViewController : UIViewController
{
    IBOutlet UILabel * welcomeLabel;
    IBOutlet UIButton *pirateButton;
    IBOutlet UIButton *monkeyButton;
    IBOutlet UIButton *robotButton;
    IBOutlet UIButton *zombieButton;
    IBOutlet UIButton *ninjaButton;
    IBOutlet UIImageView *image;
    IBOutlet UIImageView *image2;
    IBOutlet UILabel *winningLabel;
    int random;
    int buttonPressed;
    int winner;
}


- (IBAction)monkeyButtonPressed:(id)sender;
- (IBAction)robotButtonPressed:(id)sender;
- (IBAction)pirateButtonPressed:(id)sender;
- (IBAction)ninjaButtonPressed:(id)sender;
- (IBAction)zombieButtonPressed:(id)sender;

@end
