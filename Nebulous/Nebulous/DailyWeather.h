//
//  DailyWeather.h
//  Nebulous
//
//  Created by Elyanil Liranzo Castro on 5/8/17.
//  Copyright © 2017 Elyanil Liranzo Castro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DailyWeather : NSObject

@property(strong, nonatomic) NSString *feelsLikeTempMax;
@property(strong, nonatomic) NSString *feelsLikeTempMin;
@property(strong, nonatomic) NSString *humidity;
@property(strong, nonatomic) NSString *dewPoint;
@property(strong, nonatomic) NSString *visibility;
@property(strong, nonatomic) NSString *pressure;
@property(strong, nonatomic) NSString *windBearing;
@property(strong, nonatomic) NSString *icon;
@property(strong, nonatomic) NSString *time;
@property(strong, nonatomic) NSString *summary;

-(id)initWithDailyDictionary:(NSDictionary *)dictionary;
@end