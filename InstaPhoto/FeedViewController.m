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

//  UIButton *favoritesButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//  favoritesButton.frame = CGRectMake(60, 100, 200, 44);
//  [favoritesButton setTitle:@"View Favorites" forState:UIControlStateNormal];
//  [self.view addSubview:favoritesButton];

//  [favoritesButton addTarget:self action:@selector(showFavorites:) forControlEvents:UIControlEventTouchUpInside];

  UIButton *buttonView = [UIButton buttonWithType:UIButtonTypeCustom];
  [buttonView setImage:[UIImage imageNamed:@"victory.jpg"] forState:UIControlStateNormal];
  [buttonView setImage:[UIImage imageNamed:@"victory.jpg"] forState:UIControlStateHighlighted];
  [buttonView setFrame:CGRectMake(15, 15, 100, 100)];

  [self.view addSubview:buttonView];

  [buttonView addTarget:self action:@selector(showZoomedPicture:) forControlEvents:UIControlEventTouchUpInside];

	// Do any additional setup after loading the view.
}

- (void)showFavorites:(UIButton *) sender
{
  FavoritesViewController * favoritesViewController = [[FavoritesViewController alloc] init];
  [self.navigationController pushViewController:favoritesViewController animated:YES];
}

- (void)showZoomedPicture:(UIButton *) sender
{
  UIViewController *imageViewController = [[UIViewController alloc] init];
  imageViewController.view.frame = self.view.frame;
  imageViewController.title = @"Image";

  UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"victory.jpg"]];
  [imageView setContentMode:UIViewContentModeScaleAspectFit];

  imageView.frame = imageViewController.view.frame;
  [imageViewController.view addSubview:imageView];

  [self.navigationController pushViewController:imageViewController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
