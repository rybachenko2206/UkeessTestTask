//
//  PeopleTableViewCell.h
//  UkeessTestTask
//
//  Created by Roman Rybachenko on 1/11/17.
//  Copyright © 2017 Roman Rybachenko. All rights reserved.
//

#import <UIKit/UIKit.h>
@class People;

@interface PeopleTableViewCell : UITableViewCell

@property (nonatomic, strong) People *people;

+ (NSString *)cellIdentifier;

@end
