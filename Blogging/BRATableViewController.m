//
//  BRATableViewController.m
//  Blogging
//
//  Created by Austen Johnson on 5/31/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import "BRATableViewController.h"
#import "BRABlogPost.h"
#import "BRAWebViewController.h"

@interface BRATableViewController ()

@end

@implementation BRATableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSURL *blogURL = [NSURL URLWithString:@"http://blog.teamtreehouse.com/api/get_recent_summary/"];
    NSData *jsonData = [NSData dataWithContentsOfURL:blogURL];
    
    NSError *error = nil;
    
    NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];
    NSLog(@"%@", dataDictionary);
    
    self.blogPosts = [NSMutableArray array];
    
    NSArray *blogpostArray = [dataDictionary objectForKey:@"posts"];
    
    for (NSDictionary * bpDictionary in blogpostArray)
    {
        BRABlogPost * blogPost = [BRABlogPost blogPostWithTitle:[bpDictionary objectForKey:@"title"]];
        blogPost.author = [bpDictionary objectForKey:@"author"];
        blogPost.thumbnail = [bpDictionary objectForKey:@"thumbnail"];
        blogPost.date = [bpDictionary objectForKey:@"date"];
        blogPost.url = [NSURL URLWithString:[bpDictionary objectForKey:@"url"]];
        [self.blogPosts addObject:blogPost];
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.blogPosts count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    BRABlogPost *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
    
    if ([blogPost.thumbnail isKindOfClass:[NSString class]])
    {
        NSData *imageData = [NSData dataWithContentsOfURL:blogPost.thumbnailURL];
        UIImage *image = [UIImage imageWithData:imageData];
        
        cell.imageView.image = image;

    }
    else
    {
        cell.imageView.image = [UIImage imageNamed:@""];
    }
        cell.textLabel.text = blogPost.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ - %@", blogPost.author, [blogPost formattedDate]];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showBlogPost"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        BRABlogPost *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
        [segue.destinationViewController setBlogPostURL:blogPost.url];
    }
}

@end
