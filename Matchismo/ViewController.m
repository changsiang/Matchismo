//
//  ViewController.m
//  Matchismo
//
//  Created by NUS on 29/10/18.
//  Copyright © 2018 NUS. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@end

@implementation ViewController

- (Deck *)deck
{
    if(!_deck) _deck = [self createDeck];
    return _deck;
}

- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount = %d", self.flipCount);
}
- (IBAction)touchCardButton:(UIButton *)senderac
{
    Card *card = [self.deck drawRandomCard];

    if([senderac.currentTitle length]){
        [senderac setBackgroundImage:[UIImage imageNamed:@"backcard"]
                            forState:UIControlStateNormal];
        [senderac setTitle:@"" forState:UIControlStateNormal];
    } else {
        [senderac setBackgroundImage:[UIImage imageNamed:@"frontcard"] forState:UIControlStateNormal];
        [senderac setTitle:card.contents forState:UIControlStateNormal];
    }
    self.flipCount++;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
