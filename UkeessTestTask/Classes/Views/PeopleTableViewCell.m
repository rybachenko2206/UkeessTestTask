//
//  PeopleTableViewCell.m
//  UkeessTestTask
//
//  Created by Roman Rybachenko on 1/11/17.
//  Copyright © 2017 Roman Rybachenko. All rights reserved.
//


#import "People.h"

#import "PeopleTableViewCell.h"

@interface PeopleTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *fullNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *genderLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;

@end

@implementation PeopleTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


#pragma mark - Setters 

- (void)setPeople:(People *)people {
    _people = people;
    
    self.fullNameLabel.text = _people.fullName;
#warning show parameters
}


#pragma mark - Static methods

+ (NSString *)cellIdentifier {
    return NSStringFromClass([PeopleTableViewCell class]);
}

@end
