//
//  ROSMenuVC.m
//  Roshambo
//
//  Created by Austen Johnson on 7/2/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import "ROSMenuVC.h"

@interface ROSMenuVC ()

@end

@implementation ROSMenuVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImageView * menuImage = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width, 0, 320, 240)];
    menuImage.backgroundColor = [UIColor redColor];
    [self.view addSubview:menuImage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
