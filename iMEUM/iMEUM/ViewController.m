//
//  ViewController.m
//  iMEUM
//
//  Created by loi on 2/11/15.
//  Copyright (c) 2015 GWrabbit. All rights reserved.
//

#import "ViewController.h"
#import "BAENTabView.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet BAENTabView* tabViewMenu;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BAENTabItem * horseforsale = [BAENTabItem createButtonItemWithImage:[UIImage imageNamed:@"Phone"] target:self selector:@selector(Tab:)];
    BAENTabItem * horseproperties = [BAENTabItem createButtonItemWithImage:[UIImage imageNamed:@"Phone"] target:self selector:@selector(Tab:)];
    BAENTabItem * business = [BAENTabItem createButtonItemWithImage:[UIImage imageNamed:@"Phone"] target:self selector:@selector(Tab:)];
    BAENTabItem * events = [BAENTabItem createButtonItemWithImage:[UIImage imageNamed:@"Phone"] target:self selector:@selector(Tab:)];
    
    self.tabViewMenu.horizontalInsets = HorizontalEdgeInsetsMake(25, 25);
    self.tabViewMenu.drawSeparators = YES;
    self.tabViewMenu.darkensBackgroundForEnabledTabs = NO;
    [self.tabViewMenu setTabItems:@[horseforsale,horseproperties,business,events]];
}

- (void)Tab:(id)sender
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
