//
//  PlayingCardView.h
//  CardViewer
//
//  Created by 鹏 刘 on 2017/1/5.
//  Copyright © 2017年 鹏 刘. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView
@property (nonatomic) NSUInteger rank;
@property (nonatomic, strong) NSString *suit;
@property (nonatomic) BOOL faceUp;
@end
