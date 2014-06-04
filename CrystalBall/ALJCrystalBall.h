//
//  ALJCrystalBall.h
//  CrystalBall
//
//  Created by Austen Johnson on 5/29/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ALJCrystalBall : NSObject
{
    NSArray *_predictions;
}

@property (nonatomic, readonly) NSArray *predictions;

- (NSString *) randomPrediction;

@end
