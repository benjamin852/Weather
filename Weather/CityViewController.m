

#import "CityViewController.h"

@interface CityViewController ()

@end

@implementation CityViewController
- (instancetype) initWithCity: (City*) city {
    self = [super init];
    if (self) {
        _city = city;
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *detailButton = [[UIBarButtonItem alloc] initWithTitle:@"Detail Button"
                                                                     style:UIBarButtonItemStylePlain
                                                                    target:self
                                                                    action:@selector(showWeatherDetails)];
    self.navigationItem.rightBarButtonItem = detailButton;
    UILabel *cityViewLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 70, 300, 100)];
    NSString *secondString = [NSString stringWithFormat:@"%@\n %@", self.city.condition, self.city.temperature];
    cityViewLabel.numberOfLines = 2;
    cityViewLabel.text = secondString;
    [self.view addSubview:cityViewLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) showWeatherDetails {
    DetailViewController *dvc = [[DetailViewController alloc] init];
    dvc.city = self.city;
    NSLog(@"function called");
    // outlet1.text = self.city.temperature
    [self.navigationController pushViewController:dvc animated:YES];
    
}


@end
