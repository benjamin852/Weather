

#import <Foundation/Foundation.h>

@interface City : NSObject
@property (nonatomic) NSString *temperature;
@property (nonatomic) NSString *condition;
- (instancetype) initWithTemperture:(NSString*)temperature withCondition:(NSString*)condition widthPercentHumidity:(NSString*)percentHumidity widthSpeed:(NSInteger)windSpeed;



//these properties will be accessed by the detail VC
@property (nonatomic) NSString* percentHumidity;
@property (nonatomic) NSInteger windSpeed;


@end
