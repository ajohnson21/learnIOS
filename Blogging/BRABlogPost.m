//
//  BRABlogPost.m
//  Blogging
//
//  Created by Austen Johnson on 5/31/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import "BRABlogPost.h"

@implementation BRABlogPost

- (id) initWithTitle:(NSString *)title
{
    self = [super init];
    
    if (self)
    {
        self.title = title;
        self.author = nil;
        self.thumbnail = nil;
    }
    return self;
}

+ (id) blogPostWithTitle:(NSString *)title
{
    return [[self alloc] initWithTitle:title];
}

- (NSURL *)thumbnailURL
{
    return [NSURL URLWithString:self.thumbnail];
}

@end
