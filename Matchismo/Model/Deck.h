//
//  Deck.h
//  Matchismo
//
//  Created by NUS on 29/10/18.
//  Copyright © 2018 NUS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"


@interface Deck : NSObject
- (void) addCard: (Card *)card atTop: (BOOL)atTop;
- (void) addCard: (Card *)card;
- (Card *)drawRandomCard;


@end
