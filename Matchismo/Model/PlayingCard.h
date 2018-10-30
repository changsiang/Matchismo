//
//  PlayingCard.h
//  Matchismo
//
//  Created by NUS on 30/10/18.
//  Copyright © 2018 NUS. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
