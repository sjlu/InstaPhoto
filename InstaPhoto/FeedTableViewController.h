//
//  FeedTableViewController.h
//  InstaPhoto
//
//  Created by Steven Lu on 10/5/13.
//  Copyright (c) 2013 Steven Lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeedTableViewController : UITableViewController

@property (strong, nonatomic) NSArray * imageTitles;
@property (strong, nonatomic) NSArray * imageFiles;
@property (strong, nonatomic) NSArray * imageDetails;

@end
