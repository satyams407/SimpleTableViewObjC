//
//  HomeViewController.m
//  ItunesAPI
//
//  Created by Satyam Sehgal on 24/02/19.
//  Copyright © 2019 Satyam Sehgal. All rights reserved.
//

#import "HomeViewController.h"

// By putting simple paranthesis after class name, I am just making class extension
@interface HomeViewController ()
// Incase to put private properties and methods
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation HomeViewController

NSMutableArray *dataSource;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self fetchData];
    [self setUpData];
}

- (void) setUpData {
    dataSource = [[NSMutableArray alloc]initWithObjects:
                  @"New Delhi",@"Mumbai",@"Hyderabad",
                  @"Bangalore",@"Sydney",@"Melbourne",
                  @"Brisbane",@"Perth",@"New York",
                  @"Los Angeles",@"Chicago",@"Boston", nil];
}

- (void) fetchData {
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
     return [dataSource count];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *cellID = @"tableCell";
    UITableViewCell *tableCell = [tableView dequeueReusableCellWithIdentifier: cellID];
    NSString *stringForCell = [dataSource objectAtIndex: indexPath.row];
    [tableCell.textLabel setText: stringForCell];
    return tableCell;
}

@end
