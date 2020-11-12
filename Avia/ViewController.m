//
//  ViewController.m
//  Avia
//
//  Created by Denis Vlaskin on 12.11.2020.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configure];
}

- (void)showDetail {
    DetailViewController* vc = [DetailViewController new];
    [self.navigationController showViewController:vc sender:self];
}

- (void)configure {
    self.title = @"First screen";
    [self.view setBackgroundColor:[UIColor yellowColor]];

    UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"Detail" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0.0, 0.0, 100.0, 32.0);
    btn.center = self.view.center;
    [btn addTarget:self action:@selector(showDetail) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
    
    UILabel* lbl = [UILabel new];
    lbl.text = @"Information";
    lbl.frame = CGRectMake(0.0, 0.0, 100.0, 32.0);
    lbl.center = CGPointMake(self.view.center.x, self.view.center.y - 64.0);
    lbl.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:lbl];
}

@end
