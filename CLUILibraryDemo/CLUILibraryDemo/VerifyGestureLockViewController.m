//
//  VerifyGestureLockViewController.m
//  CLUILibraryDemo
//
//  Created by yilecity on 15/11/20.
//  Copyright (c) 2015年 yilecity. All rights reserved.
//

#import "VerifyGestureLockViewController.h"

@interface VerifyGestureLockViewController ()

@end

@implementation VerifyGestureLockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)GestureLockFinish:(NSString *)gesture{
    
    NSString *GestureLock = [[NSUserDefaults standardUserDefaults] objectForKey:@"MyGestureLock"];
    
    if([GestureLock isEqualToString:gesture]){
        
        [self.navigationController popViewControllerAnimated:YES];
    }
    else{
        [self.LockPanel changeCircleInCircleSetWithState:CircleStateError];
        [self.LockPanel errorToDisplay];
        
        self.lblTip.text = @"密码验证失败";
        [self.lblTip.layer shake];
        
    }
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
