//
//  Card.h
//  Matchismo
//
//  Created by NUS on 29/10/18.
//  Copyright © 2018 NUS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;




@end
