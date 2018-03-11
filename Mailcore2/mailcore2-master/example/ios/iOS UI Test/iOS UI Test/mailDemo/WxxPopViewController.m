//
//  WxxPopViewController.m
//  iOS UI Test
//
//  Created by game just on 2018/3/11.
//  Copyright © 2018年 AppJon. All rights reserved.
//

#import "WxxPopViewController.h"
#import <MailCore/MailCore.h>
@interface WxxPopViewController ()
//http://blog.csdn.net/bluefish89/article/details/44852103
@end

@implementation WxxPopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initPopEmail];
    
}

-(void)initPopEmail{
    
    MCOPOPSession *session = [[MCOPOPSession alloc]init];
    session.hostname = @"pop.qq.com";
    session.port = 995;
    [session setUsername:@"love-333-love@qq.com"];
    [session setPassword:@"wengxianxun111"];
    [session setConnectionType:MCOConnectionTypeTLS];
 
    MCOPOPOperation *checkOp = [session checkAccountOperation];
    [checkOp start:^(NSError * _Nullable error) {
        NSLog(@"finished checking account.");
        
        if (error == nil) {
            
            //正确登录邮箱
            
            /*在这里获取邮件头，通过邮件头可以获得邮件内容，详情看下面*/
            
        } else {
            
            NSLog(@"登录邮箱失败，请检查网络重试,error loading account: %@", error);
            
            
            
        }
        
//        checkOp = nil;
    }];
    
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
