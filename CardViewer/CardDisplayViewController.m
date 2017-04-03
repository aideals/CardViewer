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

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"card display";
    
    self.playingCardView = [[PlayingCardView alloc] initWithFrame:CGRectMake(42, 70, 300, 580)];
    self.playingCardView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.playingCardView];
    
    self.playingCardView.rank = self.rank;
    self.playingCardView.suit = self.suit;
    
    self.playingCardView.faceUp = YES;
    
    /*PlayingCardView *pcv = [[PlayingCardView alloc] initWithFrame:CGRectMake(42, 70, 300, 580)];
    pcv.backgroundColor = [UIColor redColor];
    [self.view addSubview:pcv];
    
    pcv.rank = self.rank;
    pcv.suit = self.suit;
    
    pcv.faceUp = YES;*/
}



@end
