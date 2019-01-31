//
//  ViewController.m
//  MyMusic
//
//  Created by Susu Liang on 2019/1/25.
//  Copyright © 2019年 Susu Liang. All rights reserved.
//

#import "ViewController.h"
#import "MusicModel.h"
#import "ListTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"ListTableViewCell" bundle:nil] forCellReuseIdentifier: @"ListTableViewCell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.musicArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ListTableViewCell *cell = (ListTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"ListTableViewCell"];
    Music *music = (self.musicArray)[indexPath.row];
    cell.trackNameLabel.text = music.trackName;
    cell.trackNameLabel.text = music.trackName;
    cell.collectionNameLabel.text = music.collectionName;
    cell.timeLabel.text = [NSString stringWithFormat:@"%li", (long)music.trackTimeMillis];
    cell.artistNameLabel.text = music.artistName;
    [cell.musicImageView sd_setImageWithURL:[NSURL URLWithString:music.collectionViewUrl]];
    return cell;
}



- (IBAction)tapSearchButton:(UIButton *)sender {
    NSString *text = self.textField.text;
    if (text && text.length > 0) {
        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        [manager GET:@"https://itunes.apple.com/search" parameters: @{@"term": text} progress:nil success:^(NSURLSessionDataTask * task, id responseObject) {
            
            if (responseObject) {
                NSMutableArray *arr = [[NSMutableArray alloc] init];
                [arr addObject:[responseObject objectForKey:@"results"]];
                self.musicArray = [[NSMutableArray alloc] init];
                for (NSDictionary *object in arr[0]) {
                    Music *music = [[Music alloc] initWithDictionary:object];
                    [self.musicArray addObject:music];
                };
                dispatch_async(dispatch_get_main_queue(), ^{
                    [self.tableView reloadData];
                });
            }
            
        } failure:^(NSURLSessionDataTask * task, NSError * error) {
            
        }];
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle: @"請輸入搜尋文字" message: @"" preferredStyle: UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle: @"OK" style: UIAlertActionStyleDefault handler: ^(UIAlertAction *defaultAction) {}];
        [alert addAction: action];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
}
@end
