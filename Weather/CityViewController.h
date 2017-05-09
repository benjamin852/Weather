
#import <UIKit/UIKit.h>
#import "City.h"
#import "DetailViewController.h"

@interface CityViewController : UIViewController
@property (nonatomic) City *city;
- (instancetype) initWithCity: (City*) city;

@property (nonatomic) DetailViewController *detailView;
-(void) showWeatherDetails;

@end
