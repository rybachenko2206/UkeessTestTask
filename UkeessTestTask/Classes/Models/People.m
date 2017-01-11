//
//  People.m
//  UkeessTestTask
//
//  Created by Roman Rybachenko on 1/11/17.
//  Copyright © 2017 Roman Rybachenko. All rights reserved.
//


#import "SharedDateFormatter.h"

#import "People.h"

@interface People ()

@end

@implementation People

#pragma mark - Interface methods

- (NSString *)liveDateString {
    Event *birth = [self.events firstObject];
    NSString *strBirth = [SharedDateFormatter getStringFromDate:birth.date withFormat:DATE_FORMAT_SHORT];
    
    return strBirth;
}

- (NSString *)genderString {
    return self.gender == GenderMale ? @"Male" : @"Female";
}


#pragma mark - Static methods

+ (NSArray *)testPeopleList {
    NSArray *peopleList = [NSArray array];
    
    People *jl = [People new];
    jl.gender = GenderMale;
    jl.firstName = @"John";
    jl.lastName = @"Lennon";
#warning set correct url later
    jl.photoUrl = @"http://cdn.riffraf.net/wp-content/uploads/2013/10/John-Lennon.jpg";
    
    Event *jlEvent1 = [Event eventWithName:@"Birth"
                                     place:@"Liverpool, England, UK"
                                      date:[NSDate dateWithTimeIntervalSince1970: -922406400]
                               coordinates:CLLocationCoordinate2DMake(53.4167, 3.0000)];
    Event *jlEvent2 = [Event eventWithName:@"Death "
                                     place:@"New York City, New York, US"
                                      date:[NSDate dateWithTimeIntervalSince1970:345081600]
                               coordinates:CLLocationCoordinate2DMake(40.7142, 74.0064)];
    jl.events = [NSArray arrayWithObjects:jlEvent1, jlEvent2, nil];
    peopleList = [peopleList arrayByAddingObject:jl];
    
    People *pm = [People new];
    pm.firstName = @"Paul";
    pm.lastName =  @"McCartney";
    pm.gender = GenderMale;
    pm.photoUrl = @"http://wttsfm.com/wp-content/uploads/2011/12/paul-mccartney.jpg";
    
    Event *pmEvent1 = [Event eventWithName:@"Birth"
                                     place:@"Liverpool, England, UK"
                                      date:[NSDate dateWithTimeIntervalSince1970: -869097600]
                               coordinates:CLLocationCoordinate2DMake(53.4167, 3.0000)];
    pm.events = [NSArray arrayWithObject:pmEvent1];
    peopleList = [peopleList arrayByAddingObject:pm];
    
    People *jh = [People new];
    jh.firstName = @"George";
    jh.lastName = @"Harrison";
    jh.gender = GenderMale;
    jh.photoUrl = @"http://swotti.starmedia.com/tmp/swotti/cacheZ2VVCMDLIGHHCNJPC29URW50ZXJ0YWLUBWVUDC1NDXNPY0JHBMRZ/imggeorge%20harrison1.jpg";
    
    Event *jhEvent1 = [Event eventWithName:@"Birth"
                                     place:@"Liverpool, England, UK"
                                      date:[NSDate dateWithTimeIntervalSince1970: -869097600]
                               coordinates:CLLocationCoordinate2DMake(53.4167, 3.0000)];
    Event *jhEvent2 = [Event eventWithName:@"Death "
                                     place:@"Los Angeles, California, US"
                                      date:[NSDate dateWithTimeIntervalSince1970:1052611200]
                               coordinates:CLLocationCoordinate2DMake(34.0522, 118.2428)];
    jh.events = [NSArray arrayWithObjects:jhEvent1, jhEvent2, nil];
    peopleList = [peopleList arrayByAddingObject:jh];
    
    return peopleList;
}


#pragma mark - Getters

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

@end
