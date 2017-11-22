//
//  ViewController.m
//  ZFCustomTitlePositionButton
//
//  Created by QK on 2017/11/20.
//

#import "ViewController.h"
#import "ZFCustomTitlePositionBtn.h"
#import "ZFViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource> {
    NSArray *_dataArr;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _dataArr = @[@"默认文本居右",@"文本居左",@"文本居上",@"文本居下"];
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    tableView.delegate = self;
    tableView.dataSource = self;
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
    [self.view addSubview:tableView];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}
static NSString *cellId = @"cellId";
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    if(!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = _dataArr[indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    ZFViewController *Ctr = [[ZFViewController alloc] init];
    switch (indexPath.row) {
        case 0:
            Ctr.titlePosition = ZFButtonTitlePositionNormal;
            break;
        case 1:
            Ctr.titlePosition = ZFButtonTitlePositionLeft;
            break;
        case 2:
            Ctr.titlePosition = ZFButtonTitlePositionTop;
            break;
        case 3:
            Ctr.titlePosition = ZFButtonTitlePositionBottom;
            break;
        default:
            break;
    }
    [self.navigationController pushViewController:Ctr animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
