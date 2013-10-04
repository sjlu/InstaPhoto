//
//  ProfileViewController.m
//  InstaPhoto
//
//  Created by Steven Lu on 10/3/13.
//  Copyright (c) 2013 Steven Lu. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    self.title = @"Profile";
    self.tabBarItem.image = [UIImage imageNamed:@"145-persondot"];
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
  self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
  self.scrollView.contentSize = CGSizeMake(320, 600);

  self.view.backgroundColor = [UIColor redColor];

  UIImageView *victoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"victory.jpg"]];
  victoryView.frame = CGRectMake(20, 20, 100, 114);
  [self.scrollView addSubview:victoryView];

  UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 140, 200, 40)];
  nameLabel.text = @"Name: Steven Lu";
  [self.scrollView addSubview:nameLabel];

  UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 280, 40)];
  cityLabel.text = @"From: New York";
  [self.scrollView addSubview:cityLabel];

  UITextView *biography = [[UITextView alloc] initWithFrame:CGRectMake(12, 260, 300, 180)];
  biography.font = [UIFont fontWithName:@"Helvetica" size:15];
  biography.editable = NO;
  biography.text = @"Steven Lu is the greatest being ever";
  [self.scrollView addSubview:biography];

  UILabel *memberSinceLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 440, 280, 40)];
  memberSinceLabel.text = @"September 2013";
  [self.scrollView addSubview:memberSinceLabel];

  [self.view addSubview:self.scrollView];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
