//
//  BRAWebViewController.h
//  Blogging
//
//  Created by Austen Johnson on 6/23/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BRAWebViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic) NSURL *blogPostURL;
@end
