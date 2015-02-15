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
    TableViewRowMaterial1,
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
    
    return 11;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    switch (section) {
        case 0:
            return 2;
            break;
        case 1:
            return 1;
            break;
        case 2:
            return 1;
            break;
        case 3:
            return 1;
            break;
        case 4:
            return 1;
            break;
        case 5:
            return 1;
            break;
        case 6:
            return 1;
            break;
        case 7:
            return 1;
            break;
        case 8:
            return 1;
            break;
        case 9:
            return 1;
            break;
        case 10:
            return 1;
            break;
        default:
            break;
    }
    
    return 0;
    
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    switch ([indexPath section]) {
        case 0:
            if (indexPath.row == TableViewRowTopic) {
                cell.textLabel.text = NSLocalizedString(@"Set up Speech Databank", nil);
                cell.imageView.image = [UIImage imageNamed:@"Deer1"];
            } else if (indexPath.row == TableViewRowMaterial1) {
                cell.textLabel.text = NSLocalizedString(@"Program Assignment Guide", nil);
                cell.imageView.image = [UIImage imageNamed:@"Popsicle"];
            }
            break;
        case 1:
            if (indexPath.row == TableViewRowTopic) {
                cell.textLabel.text = NSLocalizedString(@"The Ice Breaker", nil);
                cell.imageView.image = [UIImage imageNamed:@"Boom"];
            }
            break;
        case 2:
            if (indexPath.row == TableViewRowTopic) {
                cell.textLabel.text = NSLocalizedString(@"Organize Your Speech", nil);
                cell.imageView.image = [UIImage imageNamed:@"Car1"];
            }
            break;
        case 3:
            if (indexPath.row == TableViewRowTopic) {
                cell.textLabel.text = NSLocalizedString(@"Get to the Point", nil);
                cell.imageView.image = [UIImage imageNamed:@"ToiletPaper"];
            }
            break;
        case 4:
            if (indexPath.row == TableViewRowTopic) {
                cell.textLabel.text = NSLocalizedString(@"How to Say It", nil);
                cell.imageView.image = [UIImage imageNamed:@"Dropper"];
            }
            break;
        case 5:
            if (indexPath.row == TableViewRowTopic) {
                cell.textLabel.text = NSLocalizedString(@"Your Body Speaks", nil);
                cell.imageView.image = [UIImage imageNamed:@"Fire"];
            }
            break;
        case 6:
            if (indexPath.row == TableViewRowTopic) {
                cell.textLabel.text = NSLocalizedString(@"Vocal Variety", nil);
                cell.imageView.image = [UIImage imageNamed:@"Hand1"];
            }
            break;
        case 7:
            if (indexPath.row == TableViewRowTopic) {
                cell.textLabel.text = NSLocalizedString(@"Research Your Topic", nil);
                cell.imageView.image = [UIImage imageNamed:@"MusicalNote"];
            }
            break;
        case 8:
            if (indexPath.row == TableViewRowTopic) {
                cell.textLabel.text = NSLocalizedString(@"Get Comfortable with Visual Aids", nil);
                cell.imageView.image = [UIImage imageNamed:@"Phantom"];
            }
            break;
        case 9:
            if (indexPath.row == TableViewRowTopic) {
                cell.textLabel.text = NSLocalizedString(@"Persuade with Power", nil);
                cell.imageView.image = [UIImage imageNamed:@"Tools"];
            }
            break;
        case 10:
            if (indexPath.row == TableViewRowTopic) {
                cell.textLabel.text = NSLocalizedString(@"Inspire Your Audience", nil);
                cell.imageView.image = [UIImage imageNamed:@"Car2"];
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
            return @"iMEUM Talk Materials";
            break;
        case 1:
            return @"Project 1";
            break;
        case 2:
            return @"Project 2";
            break;
        case 3:
            return @"Project 3";
            break;
        case 4:
            return @"Project 4";
            break;
        case 5:
            return @"Project 5";
            break;
        case 6:
            return @"Project 6";
            break;
        case 7:
            return @"Project 7";
            break;
        case 8:
            return @"Project 8";
            break;
        case 9:
            return @"Project 9";
            break;
        case 10:
            return @"Project 10";
            break;
        default:
            break;
    }
    
    return nil;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    if (section == 10) {
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
                Materials *vc1 = [[Materials alloc] initWithTitle:@"Set up Speech Databank"];
                [self.navigationController pushViewController:vc1 animated:YES];
            } else if (indexPath.row == TableViewRowMaterial1) {
                Materials *vc1 = [[Materials alloc] initWithTitle:@"Program Assignment Guide"];
                [self.navigationController pushViewController:vc1 animated:YES];
            }
            break;
        case 1:
            if (indexPath.row == TableViewRowTopic) {
                Materials *vc1 = [[Materials alloc] initWithTitle:@"The Ice Breaker"];
                [self.navigationController pushViewController:vc1 animated:YES];
            }
            break;
        case 2:
            if (indexPath.row == TableViewRowTopic) {
                Materials *vc1 = [[Materials alloc] initWithTitle:@"Organize Your Speech"];
                [self.navigationController pushViewController:vc1 animated:YES];
            }
            break;
        case 3:
            if (indexPath.row == TableViewRowTopic) {
                Materials *vc1 = [[Materials alloc] initWithTitle:@"Get to the Point"];
                [self.navigationController pushViewController:vc1 animated:YES];
            }
            break;
        case 4:
            if (indexPath.row == TableViewRowTopic) {
                Materials *vc1 = [[Materials alloc] initWithTitle:@"How to Say It"];
                [self.navigationController pushViewController:vc1 animated:YES];
            }
            break;
        case 5:
            if (indexPath.row == TableViewRowTopic) {
                Materials *vc1 = [[Materials alloc] initWithTitle:@"Your Body Speaks"];
                [self.navigationController pushViewController:vc1 animated:YES];
            }
            break;
        case 6:
            if (indexPath.row == TableViewRowTopic) {
                Materials *vc1 = [[Materials alloc] initWithTitle:@"Vocal Variety"];
                [self.navigationController pushViewController:vc1 animated:YES];
            }
            break;
        case 7:
            if (indexPath.row == TableViewRowTopic) {
                Materials *vc1 = [[Materials alloc] initWithTitle:@"Research Your Topic"];
                [self.navigationController pushViewController:vc1 animated:YES];
            }
            break;
        case 8:
            if (indexPath.row == TableViewRowTopic) {
                Materials *vc1 = [[Materials alloc] initWithTitle:@"Get Comfortable with Visual Aids"];
                [self.navigationController pushViewController:vc1 animated:YES];
            }
            break;
        case 9:
            if (indexPath.row == TableViewRowTopic) {
                Materials *vc1 = [[Materials alloc] initWithTitle:@"Persuade with Power"];
                [self.navigationController pushViewController:vc1 animated:YES];
            }
            break;
        case 10:
            if (indexPath.row == TableViewRowTopic) {
                Materials *vc1 = [[Materials alloc] initWithTitle:@"Inspire Your Audience"];
                [self.navigationController pushViewController:vc1 animated:YES];
            }
            break;
        default:
            break;
    }
}

@end
