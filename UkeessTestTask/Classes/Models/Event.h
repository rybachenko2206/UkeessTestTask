//
//  Event.h
//  UkeessTestTask
//
//  Created by Roman Rybachenko on 1/11/17.
//  Copyright © 2017 Roman Rybachenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Event : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *place;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;

+ (Event *)eventWithName:(NSString *)name
                   place:(NSString *)place
                    date:(NSDate *)date
             coordinates:(CLLocationCoordinate2D)coordinates ;

@end
