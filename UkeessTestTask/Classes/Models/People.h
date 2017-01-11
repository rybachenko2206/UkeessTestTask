//
//  People.h
//  UkeessTestTask
//
//  Created by Roman Rybachenko on 1/11/17.
//  Copyright © 2017 Roman Rybachenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Event.h"

typedef NS_ENUM(NSUInteger, Gender) {
    GenderFemale = 0,
    GenderMale
};

@interface People : NSObject

@property (nonatomic, assign) Gender gender;
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong, readonly) NSString *fullName;
@property (nonatomic, strong) NSString *photoUrl;
@property (nonatomic, strong) NSArray *events;


- (NSString *)genderString;
- (NSString *)liveDateString;

+ (NSArray *)testPeopleList;

@end
