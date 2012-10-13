//
//  S11ViewController.h
//  Score 11
//
//  Created by Dominik Jungowski on 10.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface S11ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    NSMutableArray *movies;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) NSMutableArray *movies;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;

- (void)loadListData;

@end
