//
//  ViewController.m
//  MBProgressPractice
//
//  Created by 研发部 on 2018/1/7.
//  Copyright © 2018年 development team. All rights reserved.
//

#import "ViewController.h"
#import "MBProgressHUD+MJ.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
 [super viewDidLoad];
 // Do any additional setup after loading the view, typically from a nib.
 
 UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
 btn.backgroundColor = [UIColor redColor];
 [btn addTarget:self action:@selector(clickbtn) forControlEvents:UIControlEventTouchUpInside];
 [self.view addSubview:btn];
}
-(void)clickbtn{
 NSLog(@"点击红色按钮");
 [MBProgressHUD showMessage:@"在哪里啊"];
 dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
  //延时执行可以模拟一个网络请求
  [MBProgressHUD hideHUD];
        });

}




@end
