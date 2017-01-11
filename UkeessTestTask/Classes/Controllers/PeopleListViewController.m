//
//  PeopleListViewController.m
//  UkeessTestTask
//
//  Created by Roman Rybachenko on 1/11/17.
//  Copyright © 2017 Roman Rybachenko. All rights reserved.
//


#import "People.h"
#import "PeopleTableViewCell.h"

#import "PeopleListViewController.h"


@interface PeopleListViewController ()

@property (nonatomic, strong) NSArray *peopleList;

@end


@implementation PeopleListViewController


#pragma mark - Overriden methods

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.peopleList = [People testPeopleList];
}

#pragma mark - Delegate methods:
#pragma mark —UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.peopleList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellId = [PeopleTableViewCell cellIdentifier];
    PeopleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    cell.people = self.peopleList[indexPath.row];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}



@end
