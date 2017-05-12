//
//  CurrentWeather.m
//  Nebulous
//
//  Created by Elyanil Liranzo Castro on 5/8/17.
//  Copyright © 2017 Elyanil Liranzo Castro. All rights reserved.
//

#import "CurrentForecast.h"
#import "Forecastr.h"
@implementation CurrentForecast

-(id)initWithCurrentlyDictionary:(NSDictionary *)dictionary{
    self = [super init];
    if (self) {
        _feelsLikeTemp = [self temperatureFormatter: dictionary[kFCApparentTemperature]];
        _icon = [[Forecastr sharedManager] imageNameForWeatherIconType:dictionary[kFCIcon]];
        _pressure = dictionary[kFCPressure];
        _precipIntensity = dictionary[kFCPrecipIntensity];
        _precipProbability = dictionary[kFCPrecipProbability];
        _temperature = [self temperatureFormatter:dictionary[kFCTemperature]];
        _time = dictionary[kFCTime];
        _summary = dictionary[kFCSummary];
        _temperatureCelsius = [self fahrenheitToCelsius: dictionary[kFCTemperature]];
        _windSpeed = dictionary[kFCWindSpeed];
        _windBearing = [self windBearingForCompassSectors:dictionary[kFCWindBearing]];
    }
    return self;
}

-(NSNumber *)windBearingForCompassSectors:(id)windBearing{
    int windBearingValue = [(NSNumber *)windBearing doubleValue];
    int index = (windBearingValue + 11.25)/22.5;
    return [[NSNumber alloc] initWithInt:index % 16];
}

-(NSString *)fahrenheitToCelsius:(NSString *)temperature{
    
    return [[NSString alloc] initWithFormat:@"%.02f",(([temperature doubleValue] - 32) * (5 / 9))];
}
-(NSString *)temperatureFormatter:(NSString *)temperature{
    return [[NSString alloc] initWithFormat:@"%.0f", [temperature doubleValue]];
}
    
@end
