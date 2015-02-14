//
//  SecondViewController.m
//  iMEUM
//
//  Created by loi on 2/13/15.
//  Copyright (c) 2015 GWrabbit. All rights reserved.
//

#import "SecondViewController.h"
#import "Materials.h"

static NSString *const TableViewCellIdentifier = @"TableViewCell";

typedef enum {
    TableViewRowTopic = 0,
    TableViewRowCount
} TableViewRow;

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return TableViewRowCount;
    
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    switch ([indexPath section]) {
        case 0:
            if (indexPath.row == TableViewRowTopic) {
                cell.textLabel.text = NSLocalizedString(@"The Ice Breaker", nil);
                cell.imageView.image = [UIImage imageNamed:@"Chart"];
            }
            break;
        case 1:
            if (indexPath.row == TableViewRowTopic) {
                cell.textLabel.text = NSLocalizedString(@"Organize Your Speech", nil);
                cell.imageView.image = [UIImage imageNamed:@"Chart"];
            }
            break;
            
        default:
            break;
    }

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 45.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = nil;
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TableViewCellIdentifier];
    
    cell.textLabel.font = [UIFont fontWithName:@"Avenir-Light" size:18];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return @"Project 1";
            break;
        case 1:
            return @"Project 2";
            break;
        default:
            break;
    }
    
    return nil;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    if (section == 1) {
        return [NSString stringWithFormat:@"iMEUM\nversion %@ build %@.", [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"],[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]];
    }
    
    return nil;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    //Class controllerClass;
    switch ([indexPath section]) {
        case 0:
            if (indexPath.row == TableViewRowTopic) {
                Materials *vc1 = [[Materials alloc] initWithTitle:@"The Ice Breaker"];
                [self.navigationController pushViewController:vc1 animated:YES];
            }
            break;
        case 1:
            if (indexPath.row == TableViewRowTopic) {
                Materials *vc1 = [[Materials alloc] initWithTitle:@"Organize Your Speech"];
                [self.navigationController pushViewController:vc1 animated:YES];
            }
            break;
        default:
            break;
    }
}

@end
