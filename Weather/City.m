

#import "City.h"

@implementation City
- (instancetype) initWithTemperture:(NSString*)temperature withCondition:(NSString*)condition widthPercentHumidity:(NSString*)percentHumidity widthSpeed:(NSInteger)windSpeed {
    self = [super init];
    if (self) {
        _temperature = temperature;
        _condition = condition;
        _percentHumidity = percentHumidity;
        _windSpeed = windSpeed;
        
    }
    return self;
}

@end
