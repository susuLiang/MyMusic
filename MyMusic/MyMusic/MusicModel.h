//
//  MusicModel.h
//  MyMusic
//
//  Created by Susu Liang on 2019/1/31.
//  Copyright © 2019年 Susu Liang. All rights reserved.
//

#ifndef MusicModel_h
#define MusicModel_h

@interface Music : NSObject

@property (strong, nonatomic) NSString *kind;
@property (strong, nonatomic) NSString *artistName;
@property (strong, nonatomic) NSString *collectionName;
@property (strong, nonatomic) NSString *trackName;
@property (strong, nonatomic) NSString *collectionViewUrl;
@property NSInteger *trackTimeMillis;

-(instancetype)initWithDictionary:(NSDictionary *)dict;
@end

#endif /* MusicModel_h */
