//
//  ALJCrystalBall.m
//  CrystalBall
//
//  Created by Austen Johnson on 5/29/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import "ALJCrystalBall.h"

@implementation ALJCrystalBall

- (NSArray *) predictions
{
    if (_predictions == nil)
    {
        _predictions = [[NSArray alloc] initWithObjects:
                        @"It is certain",
                        @"It is decidely so",
                        @"All signs say YES",
                        @"The stars are not aligned",
                        @"My reply is no",
                        @"It is doubtful",
                        @"Better not tell you now",
                        @"Concentrate and ask again",
                        @"Unable to answer now",
                        @"Maybe, yes", nil];
    }
    return _predictions;
}

- (NSString *) randomPrediction
{
    int randomNumber = arc4random_uniform(self.predictions.count);
    return [self.predictions objectAtIndex:randomNumber];
}




@end
