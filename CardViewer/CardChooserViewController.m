//
//  ViewController.m
//  CardViewer
//
//  Created by 鹏 刘 on 2017/1/5.
//  Copyright © 2017年 鹏 刘. All rights reserved.
//

#import "CardChooserViewController.h"
#import "CardDisplayViewController.h"

@interface CardChooserViewController ()
@property (nonatomic, strong) UILabel *rankLabel;
@property (nonatomic, strong) UISegmentedControl *suitSelectedSegmented;
@property (nonatomic, strong) UISlider *rankSlider;
@property (nonatomic) NSInteger rank;
@property (nonatomic, strong) NSString *suit;
@end

@implementation CardChooserViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initRankLabel];
    [self initRankSlider];
    [self initSuitSelectedSegmented];
    [self initShowCard];
}

- (void)setRank:(NSInteger)rank
{
    _rank = rank;
    self.rankLabel.text = [self rankAsString];
}

- (NSString *)suit
{
    return [self.suitSelectedSegmented titleForSegmentAtIndex:self.suitSelectedSegmented.selectedSegmentIndex];
}

- (void)initRankLabel
{
    self.rankLabel = [[UILabel alloc] initWithFrame:CGRectMake(155, 100, 75, 75)];
    self.rankLabel.backgroundColor = [UIColor whiteColor];
    self.rankLabel.font = [UIFont fontWithName:@"Arial" size:50];
    self.rankLabel.textAlignment = UITextAlignmentCenter;
    [self.view addSubview:self.rankLabel];
}

- (void)initRankSlider
{
    self.rankSlider = [[UISlider alloc] initWithFrame:CGRectMake(25, 265, 300, 20)];
    self.rankSlider.minimumValue = 0;
    self.rankSlider.maximumValue = 12;
    [self.rankSlider addTarget:self action:@selector(changeCount:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.rankSlider];
}

- (IBAction)changeCount:(UISlider *)sender
{
    self.rank = round(sender.value);
}

- (NSString *)rankAsString
{
    return @[@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"][self.rank];
}

- (void)initSuitSelectedSegmented
{
    self.suitSelectedSegmented = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"♠️" ,@"♣️",@"♥️",@"♦️",nil]];
    self.suitSelectedSegmented.frame = CGRectMake(90, 350, 170, 50);
    self.suitSelectedSegmented.selectedSegmentIndex = 0;
    [self.view addSubview:self.suitSelectedSegmented];
}

- (void)initShowCard
{
    UIButton *showCard = [[UIButton alloc] initWithFrame:CGRectMake(90, 500, 170, 60)];
    [showCard setTitle:@"show me the card" forState:UIControlStateNormal];
    [showCard setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [showCard addTarget:self action:@selector(showCard:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:showCard];
}

- (IBAction)showCard:(UIButton *)sender
{
    CardDisplayViewController *cdvs = [[CardDisplayViewController alloc] initWithNibName:nil bundle:nil];
    cdvs.rank = self.rank;
    cdvs.suit = self.suit;
    
    [self.navigationController pushViewController:cdvs animated:YES];
}



@end
