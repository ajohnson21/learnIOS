//
//  ROSViewController.m
//  Roshambo
//
//  Created by Austen Johnson on 6/9/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import "ROSViewController.h"

@interface ROSViewController ()

@end

@implementation ROSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    welcomeLabel.text = @"Make Your Move";
    winningLabel.hidden = YES;
}

- (IBAction)monkeyButtonPressed:(id)sender
{
    image.image = [UIImage imageNamed:@"monkeyImage"];
    [self computerChoice];
    buttonPressed = 0;
    [self determineWinner];
    winningLabel.hidden = NO;
    welcomeLabel.hidden = YES;
}

- (IBAction)robotButtonPressed:(id)sender
{
    image.image = [UIImage imageNamed:@"robotImage"];
    [self computerChoice];
    buttonPressed = 1;
    [self determineWinner];
    winningLabel.hidden = NO;
    welcomeLabel.hidden = YES;
}

- (IBAction)pirateButtonPressed:(id)sender
{
    image.image = [UIImage imageNamed:@"pirateImage"];
    [self computerChoice];
    buttonPressed = 2;
    [self determineWinner];
    winningLabel.hidden = NO;
    welcomeLabel.hidden = YES;
}

- (IBAction)ninjaButtonPressed:(id)sender
{
    image.image = [UIImage imageNamed:@"ninjaImage"];
    [self computerChoice];
    buttonPressed = 3;
    [self determineWinner];
    winningLabel.hidden = NO;
    welcomeLabel.hidden = YES;
}

- (IBAction)zombieButtonPressed:(id)sender
{
    image.image = [UIImage imageNamed: @"zombieImage"];
    [self computerChoice];
    buttonPressed = 4;
    [self determineWinner];
    winningLabel.hidden = NO;
    welcomeLabel.hidden = YES;
}

- (void)computerChoice
{
    random = arc4random()%(5);
    if (random == 0) image2.image = [UIImage imageNamed:@"monkeyImage"];
    if (random == 1) image2.image = [UIImage imageNamed:@"robotImage"];
    if (random == 2) image2.image = [UIImage imageNamed:@"pirateImage"];
    if (random == 3) image2.image = [UIImage imageNamed:@"ninjaImage"];
    if (random == 4) image2.image = [UIImage imageNamed:@"zombieImage"];
}

- (void)determineWinner
{
    // 1 = tie, 2 = lose, 3 = win
    
    if (buttonPressed == 0)
    {
        if (random == 0) winner = 1;
        if (random == 1) winner = 3;
        if (random == 2) winner = 2;
        if (random == 3) winner = 3;
        if (random == 4) winner = 2;
    }
    if (buttonPressed == 1)
    {
        if (random == 0) winner = 2;
        if (random == 1) winner = 1;
        if (random == 2) winner = 2;
        if (random == 2) winner = 3;
        if (random == 2) winner = 3;
    }
    if (buttonPressed == 2)
    {
        if (random == 0) winner = 3;
        if (random == 1) winner = 3;
        if (random == 2) winner = 1;
        if (random == 2) winner = 2;
        if (random == 2) winner = 2;
    }
    if (buttonPressed == 3)
    {
        if (random == 0) winner = 2;
        if (random == 1) winner = 2;
        if (random == 2) winner = 3;
        if (random == 3) winner = 1;
        if (random == 4) winner = 3;
    }
    if (buttonPressed == 4)
    {
        if (random == 0) winner = 3;
        if (random == 1) winner = 2;
        if (random == 2) winner = 3;
        if (random == 3) winner = 2;
        if (random == 4) winner = 1;
    }


    if (winner == 1) winningLabel.text = @"It's a tie!";
    if (winner == 2) winningLabel.text = @"You lose!";
    if (winner == 3) winningLabel.text = @"You win!";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
