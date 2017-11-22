//
//  ZFViewController.m
//  ZFCustomTitlePositionButton
//
//  Created by QK on 2017/11/21.
//

#import "ZFViewController.h"

@interface ZFViewController ()

@end

@implementation ZFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    ZFCustomTitlePositionBtn *btn = [[ZFCustomTitlePositionBtn alloc] initWithFrame:CGRectMake(100, 100, 180, 180)];
    [btn setBackgroundColor:[UIColor greenColor]];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont boldSystemFontOfSize:18];
    [btn setImage:[UIImage imageNamed:@"ic_fuli@2x"] forState:UIControlStateNormal];
    [btn setTitle:@"自定义按钮" forState:UIControlStateNormal];
    [btn setTitlePosition:self.titlePosition];
    btn.space = 5;
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
