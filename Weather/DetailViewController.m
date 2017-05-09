

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *detailLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 70, 300, 300)];
    detailLabel.text = [NSString stringWithFormat:@"%ld \n %@ \n %@ \n %@", self.city.windSpeed, self.city.temperature, self.city.condition, self.city.percentHumidity];
    detailLabel.numberOfLines = 5;
    [self.view addSubview:detailLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
