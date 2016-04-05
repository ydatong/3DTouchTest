//
//  SecondViewController.m
//  3DTouchTest
//
//  Created by 周永 on 16/4/5.
//  Copyright © 2016年 shuige. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (nonatomic, strong) UIImageView *testImageView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _testImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1.jpg"]];
    _testImageView.frame = CGRectMake(50, 50, self.view.frame.size.width - 100, self.view.frame.size.height -200);
    [self.view addSubview:_testImageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSArray<id<UIPreviewActionItem>> *)previewActionItems{
    
    
    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"Action1" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
        _testImageView.image = [UIImage imageNamed:@"1.jpg"];
        
    }];
    
    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"Action2" style:UIPreviewActionStyleSelected handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        _testImageView.image = [UIImage imageNamed:@"2.png"];
    }];
    
    UIPreviewAction *action3 = [UIPreviewAction actionWithTitle:@"Action3" style:UIPreviewActionStyleDestructive handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        _testImageView.image = [UIImage imageNamed:@"3.jpg"];
    }];
    
    return @[action1,action2,action3];
    
    
}

@end
