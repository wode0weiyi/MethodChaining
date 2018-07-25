//
//  ViewController.m
//  点语法实现alert
//
//  Created by 胡志辉 on 2018/7/24.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import "ViewController.h"
#import "UIView+extense.h"
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "HGAlertViewController.h"
#import <ReactiveCocoa/RACEXTScope.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView * view = [[UIView alloc] init];
    view.setFrame(20, 100, 100, 100);
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] init];
    [[tap rac_gestureSignal] subscribeNext:^(id x) {
        self.alertView();
    }];
    [view addGestureRecognizer:tap];
}

- (void(^)(void))alertView{
    @weakify(self)
    return ^(){
        HGAlertViewController * alertView = [HGAlertViewController alertControllerWithTitle:@"提示" message:@"点语法弹窗" preferredStyle:(UIAlertControllerStyleAlert)];
        @strongify(self)
        alertView.addInput(@"userName",^(UITextField *textField){
            [[textField rac_textSignal] subscribeNext:^(id x) {
                NSLog(@"userName = %@",textField.text);
            }];
        }).addInput(@"passWord",^(UITextField * textField){
            
            [[textField rac_textSignal] subscribeNext:^(id x) {
                NSLog(@"passWord = %@",textField.text);
            }];
            
        }).addAction(@"确定",^(UIAlertAction * action){
            
        }).addAction(@"取消",^(UIAlertAction *action){
            
        }).addAction(@"reset",^(UIAlertAction *action){
            
        });
        [self presentViewController:alertView animated:true completion:nil];
    };
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
