//
//  ALJViewController.m
//  CrystalBall
//
//  Created by Austen Johnson on 5/28/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import "ALJViewController.h"

@interface ALJViewController ()

@end

@implementation ALJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.predictions = [[NSArray alloc] initWithObjects:
                        @"It is Certain",
                        @"It is Decidely so",
                        @"All signs say YES",
                        @"The stars are not aligned",
                        @"My reply is no",
                        @"It is doubtful",
                        @"Better not tell you now",
                        @"Concentrate and ask again",
                        @"Unable to answer now",
                        @"Naybe, yes", nil];
    
    [self.predictions objectAtIndex:0];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed
{
    int random = arc4random_uniform(self.predictions.count);
    self.predictionLabel.text = [self.predictions objectAtIndex:random];
}
@end
