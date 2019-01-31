//
//  ViewController.h
//  MyMusic
//
//  Created by Susu Liang on 2019/1/25.
//  Copyright © 2019年 Susu Liang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AFNetworking.h>
#import "MusicModel.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property NSMutableArray <Music*> *musicArray;
- (IBAction)tapSearchButton:(UIButton *)sender;


@end

