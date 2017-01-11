//
//  SharedDateFormatter.h
//
//  Created by Roman Rybachenko on 5/27/14.
//



#define DATE_FORMAT_SHORT @" dd.MM.yyyy"


#import <Foundation/Foundation.h>

@interface SharedDateFormatter : NSObject

+ (NSDateFormatter *)sharedInstance;

+ (NSDate*)dateFromString:(NSString*)string withFormat:(NSString*)format;
+ (NSString*)getStringFromDate:(NSDate*)date withFormat:(NSString*)dateFormat;


@end
