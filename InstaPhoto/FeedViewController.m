//
//  FeedViewController.m
//  InstaPhoto
//
//  Created by Steven Lu on 10/3/13.
//  Copyright (c) 2013 Steven Lu. All rights reserved.
//

#import "FeedViewController.h"
#import "FavoritesViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    self.title = @"Feed";
    self.tabBarItem.image = [UIImage imageNamed:@"259-list"];
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor blueColor];

  UIButton *favoritesButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  favoritesButton.frame = CGRectMake(60, 100, 200, 44);
  [favoritesButton setTitle:@"View Favorites" forState:UIControlStateNormal];
  [self.view addSubview:favoritesButton];

  [favoritesButton addTarget:self action:@selector(showFavorites:) forControlEvents:UIControlEventTouchUpInside];
	// Do any additional setup after loading the view.
}

- (void)showFavorites:(UIButton *) sender
{
  FavoritesViewController * favoritesViewController = [[FavoritesViewController alloc] init];
  [self.navigationController pushViewController:favoritesViewController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
