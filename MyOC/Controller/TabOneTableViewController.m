//
//  TabOneTableViewController.m
//  myObjectiveC
//
//  Created by Glory Staffing on 2018/6/6.
//  Copyright © 2018年 My Organization. All rights reserved.
//

#import "TabOneTableViewController.h"
#import "StatusBarOneViewController.h"
#import "PageControlViewController.h"

@interface TabOneTableViewController ()
@property (nonatomic, strong) NSMutableArray *sourceArrM;
@end

static NSString *GCellID = @"GeneralCellID";
@implementation TabOneTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"导航";
    self.sourceArrM = [NSMutableArray array];
    
    self.sourceArrM = [@[@"StatusBar", @"PageControl"] mutableCopy];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:GCellID];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.sourceArrM.count;
}


#pragma mark - Table view delegate
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:GCellID forIndexPath:indexPath];
    
    cell.textLabel.text = self.sourceArrM[indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

//detailButton点击代理方法
-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
        {
            StatusBarOneViewController *sbOneVC = [[StatusBarOneViewController alloc] initWithNibName:@"StatusBarOneViewController" bundle:nil];
            [self.navigationController pushViewController:sbOneVC animated:YES];
        }
            break;
        case 1:
        {
            PageControlViewController *pageControlVC = [[PageControlViewController alloc] initWithNibName:@"PageControlViewController" bundle:nil];
            [self.navigationController pushViewController:pageControlVC animated:YES];
        }
            break;
        default:
            break;
    }
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
