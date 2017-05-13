//
//  HourlyWeather.h
//  Nebulous
//
//  Created by Elyanil Liranzo Castro on 5/8/17.
//  Copyright © 2017 Elyanil Liranzo Castro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HourlyForecast : NSObject
@property(copy, nonatomic) NSString *feelsLike;
@property(copy, nonatomic) NSString *humidity;
@property(copy, nonatomic) NSString *precipProbability;
@property(copy, nonatomic) NSString *icon;
@property(copy, nonatomic) NSString *windBearing;
@property(copy, nonatomic) NSString *temperature;
@property(copy, nonatomic) NSString *time;
@property(copy, nonatomic) NSString *celsius;


-(id)initWithHourlyDictionary:(NSDictionary *)dictionary;
@end
