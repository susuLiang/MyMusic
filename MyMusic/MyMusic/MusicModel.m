//
//  MusicModel.m
//  MyMusic
//
//  Created by Susu Liang on 2019/1/27.
//  Copyright © 2019年 Susu Liang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MusicModel.h"

@implementation Music

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        self.kind = dict[@"kind"];
        self.artistName = dict[@"artistName"];
        self.collectionName = dict[@"collectionName"];
        self.collectionViewUrl = dict[@"artworkUrl100"];
        self.trackName = dict[@"trackName"];
    }
    return self;
}

@end
