//
//  HourlyWeatherViewControlla.h
//  Nebulous
//
//  Created by Elyanil Liranzo Castro on 5/9/17.
//  Copyright © 2017 Elyanil Liranzo Castro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HourlyWeatherViewControlla : UIViewController
@property(strong, nonatomic)NSArray *hourlyWeather;
-(void)reloadTable;
@end