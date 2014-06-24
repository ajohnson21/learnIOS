//
//  BRABlogPost.h
//  Blogging
//
//  Created by Austen Johnson on 5/31/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BRABlogPost : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *author;
@property (nonatomic) NSString *thumbnail;
@property (nonatomic) NSString *date;
@property (nonatomic) NSURL *url;

// Designated Initializer
- (id) initWithTitle:(NSString *)title;
+ (id) blogPostWithTitle:(NSString *)title;

- (NSURL *) thumbnailURL;

- (NSString *) formattedDate;

@end
