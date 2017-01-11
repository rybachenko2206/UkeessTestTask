//
//  PeopleListViewController.m
//  UkeessTestTask
//
//  Created by Roman Rybachenko on 1/11/17.
//  Copyright © 2017 Roman Rybachenko. All rights reserved.
//


#import "PeopleListViewController.h"


@interface PeopleListViewController ()

@property (nonatomic, strong) NSArray *peopleList;

@end


@implementation PeopleListViewController


#pragma mark - Overriden methods

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Delegate methods:
#pragma mark —UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.peopleList.count;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/



@end
