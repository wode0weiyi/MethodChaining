# MethodChaining
alertController通过点语法添加action和textField，
具体实现：

>
    
    HGAlertViewController * alertVC = [HGAlertViewController alertControllerWithTitle:@"提示" message:@"选择" preferredStyle:(UIAlertControllerStyleAlert)];
        
        alertVC.addInput(@"输入账号",^(UITextField *textField){
            
            [[textField rac_textSignal] subscribeNext:^(id x) {
                    NSLog(@"%@",textField.text);
            }];
        }).addAction(@"取消",^(UIAlertAction * action){
            NSLog(@"取消");
        }).addAction(@"确定",^(UIAlertAction *action){
            NSLog(@"确定");
        });
        [self presentViewController:alertVC animated:true completion:nil];

[block链式编程基本语法和技术分享](https://www.jianshu.com/p/4cc0e16e2d68)

### 有问题欢迎咨询
