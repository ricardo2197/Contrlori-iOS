//
//  ControloriViewController.h
//  Controlori
//
//  Created by Ricardo Ungureanu on 11/09/14.
//  Copyright (c) 2014 Ric. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ControloriViewController : UIViewController <NSURLConnectionDelegate, NSURLConnectionDataDelegate, UITableViewDataSource, UITableViewDelegate>
- (IBAction)back:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITableView *tabel;


@end
