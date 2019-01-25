//
//  ViewController.h
//  MyMusic
//
//  Created by Susu Liang on 2019/1/25.
//  Copyright © 2019年 Susu Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

