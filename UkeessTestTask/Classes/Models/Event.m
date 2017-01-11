//
//  Event.m
//  UkeessTestTask
//
//  Created by Roman Rybachenko on 1/11/17.
//  Copyright © 2017 Roman Rybachenko. All rights reserved.
//

#import "Event.h"

@implementation Event

+ (Event *)eventWithName:(NSString *)name
                   place:(NSString *)place
                    date:(NSDate *)date
             coordinates:(CLLocationCoordinate2D)coordinates {
    
    Event *newEvent = [Event new];
    newEvent.name = name;
    newEvent.place = place;
    newEvent.date = date;
    newEvent.coordinate = coordinates;
    return  newEvent;
}


@end
