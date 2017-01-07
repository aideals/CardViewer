//
//  CardDisplayViewController.m
//  CardViewer
//
//  Created by 鹏 刘 on 2017/1/5.
//  Copyright © 2017年 鹏 刘. All rights reserved.
//

#import "CardDisplayViewController.h"
#import "PlayingCardView.h"

@interface CardDisplayViewController ()
@property (nonatomic, strong) PlayingCardView *playingCardView;
@end

@implementation CardDisplayViewController

- (void)setPlayingCardView:(PlayingCardView *)playingCardView
{
    if (!_playingCardView) _playingCardView = [[PlayingCardView alloc] init];
}

- (void)viewWillAppear:(BOOL)animated
{
    self.playingCardView.rank = self.rank;
    self.playingCardView.suit = self.suit;
    self.playingCardView.faceUp = YES;
    
}



@end
