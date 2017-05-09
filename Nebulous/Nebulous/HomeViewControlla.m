//
//  ViewController.m
//  Nebulous
//
//  Created by Elyanil Liranzo Castro on 5/8/17.
//  Copyright © 2017 Elyanil Liranzo Castro. All rights reserved.
//

#import "HomeViewControlla.h"
#import "LocationHelper.h"//;
#import "Location.h"
#import "DailyForecast.h"
#import "Forecastr+CLLocation.h"

@interface HomeViewControlla () <LocationHelperDelegate, WeatherForecastDelegate>
@property(strong, nonatomic)Location *currentLocation;
@property(strong, nonatomic)NSMutableArray *dailyWeather;
@end

@implementation HomeViewControlla

- (void)viewDidLoad {
    [super viewDidLoad];
    self.currentLocation = [[Location alloc]init];
    [[LocationHelper shared] setDelegate:self];
    self.currentLocation.weatherForecast = [[WeatherForecast alloc]init];
    self.currentLocation.weatherForecast.delegate = self;

}


#pragma - LocationHelperMethods
-(void)didGetLocation:(CLLocation *)location{
    NSLog(@"Location: Lat: %f Lon: %f",location.coordinate.latitude, location.coordinate.longitude);
    [self.currentLocation setLocation:location];
    [self.currentLocation.weatherForecast getTheWeatherforLocation:location];
}
-(void)didFindLocationName:(NSString *)locationName{
    [self.currentLocation setLocationName:locationName];
    NSLog(@"Location: %@",self.currentLocation.locationName);
}

#pragma - WeatherForecastDelegate method
-(void)currentWeatherForLocation:(id)weather{
    WeatherForecast *forecast = (WeatherForecast *)weather;
    self.currentLocation.weatherForecast = forecast;
    for (DailyForecast *dailyforecast in self.currentLocation.weatherForecast.dailyForecasts) {
        NSLog(@"Daily Forecast: %@",dailyforecast.temperatureMax);
    }
}

@end