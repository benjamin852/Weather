

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    City *toronto = [[City alloc] initWithTemperture:@"5" withCondition:@"Hail" widthPercentHumidity:@"30%" widthSpeed:22];
    City *newYork = [[City alloc] initWithTemperture:@"8" withCondition:@"Rain" widthPercentHumidity:@"20%" widthSpeed:33];
    City *montreal = [[City alloc] initWithTemperture:@"2" withCondition:@"Snow" widthPercentHumidity:@"15%" widthSpeed:18];
    City *miami = [[City alloc] initWithTemperture:@"25" withCondition:@"Sunny" widthPercentHumidity:@"50%" widthSpeed:20];
    City *vancouver = [[City alloc] initWithTemperture:@"18" withCondition:@"Thunder Storm" widthPercentHumidity:@"60" widthSpeed:11];
   
    CityViewController *torontoVC = [[CityViewController alloc] initWithCity:toronto];
    CityViewController *newYorkVC = [[CityViewController alloc] initWithCity:newYork];
    CityViewController *montrealVC = [[CityViewController alloc] initWithCity:montreal];
    CityViewController *miamiVC = [[CityViewController alloc] initWithCity:miami];
    CityViewController *vancouverVC = [[CityViewController alloc] initWithCity:vancouver];
    
    
    //we put it in a navigation controller to "embed" it in a navigation controller
    UINavigationController *navigationControllerToronto = [[UINavigationController alloc] initWithRootViewController:torontoVC];
    UINavigationController *navigationControllerNewYork = [[UINavigationController alloc] initWithRootViewController:newYorkVC];
    UINavigationController *navigationControllerMontreal = [[UINavigationController alloc] initWithRootViewController:montrealVC];
    UINavigationController *navigationControllerMiami = [[UINavigationController alloc] initWithRootViewController:miamiVC];
    UINavigationController *navigationControllerVancouver = [[UINavigationController alloc] initWithRootViewController:vancouverVC];
    
    self.navigationControllerArray = @[@[navigationControllerToronto], @[navigationControllerNewYork], @[navigationControllerMiami], @[navigationControllerMontreal], @[navigationControllerVancouver]];
    
    
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    [tabBarController addChildViewController:navigationControllerToronto];
    [tabBarController addChildViewController:navigationControllerMiami];
    [tabBarController addChildViewController:navigationControllerNewYork];
    [tabBarController addChildViewController:navigationControllerVancouver];
    [tabBarController addChildViewController:navigationControllerMontreal];
    
    navigationControllerToronto.title= @"Toronto";
    navigationControllerMontreal.title= @"Montreal";
    navigationControllerVancouver.title= @"Vancouver";
    navigationControllerNewYork.title= @"New York";
    navigationControllerMiami.title= @"Miami";
    
    navigationControllerToronto.view.backgroundColor = [UIColor redColor];
    navigationControllerMiami.view.backgroundColor = [UIColor blueColor];
    navigationControllerMiami.view.backgroundColor = [UIColor blackColor];
    navigationControllerVancouver.view.backgroundColor = [UIColor greenColor];
    navigationControllerMontreal.view.backgroundColor = [UIColor orangeColor];

    

    [self.window makeKeyAndVisible];
    
    //here we're making the tabBarController the initial view controller (it shows the first VC in the tab bar) 
    self.window.rootViewController = tabBarController;
    return YES;
}

@end

