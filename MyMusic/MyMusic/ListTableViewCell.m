//
//  ListTableViewCell.m
//  MyMusic
//
//  Created by Susu Liang on 2019/1/25.
//  Copyright © 2019年 Susu Liang. All rights reserved.
//

#import "ListTableViewCell.h"
#import "MusicModel.h"

@implementation ListTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

//- (void)configCellWithMusic:(Music *)music {
//    self.trackNameLabel.text = music.trackName;
//    self.collectionNameLabel.text = music.collectionName;
//    self.timeLabel.text = [NSString stringWithFormat:@"%li", (long)music.trackTimeMillis];
//    self.artistNameLabel.text = music.artistName;
//}

@end
