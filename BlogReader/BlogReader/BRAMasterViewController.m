//
//  BRAMasterViewController.m
//  BlogReader
//
//  Created by Austen Johnson on 5/31/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import "BRAMasterViewController.h"

#import "BRADetailViewController.h"


@implementation BRAMasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.titlesArray = [NSArray arrayWithObjects:
                         @"Getting started with WordPress",
                         @"Whitespace in Web Design: What It Is and Why You Should Use It",
                         @"Adaptive Images and Responsive SVGs - Treehouse Show Episode 15",
                         @"Productivity is About Constraints and Concentration",
                         @"A Guide to Becoming the Smartest Developer on the Planet",
                         @"Teacher Spotlight: Zac Gordon",
                         @"Do You Love What You Do?",
                         @"Applying Normalize.css Reset - Quick Tip",
                         @"How I Wrote a Book in 3 days",
                         @"Responsive Techniques, JavaScript MVC Frameworks, Firefox 16 | TreeHouse Show Episode 14", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.titlesArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSString *object = self.titlesArray[indexPath.row];
    cell.textLabel.text = object;
    return cell;
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSString *title = self.titlesArray[indexPath.row];
        [[segue destinationViewController] setDetailItem:title];
    }
}

@end
