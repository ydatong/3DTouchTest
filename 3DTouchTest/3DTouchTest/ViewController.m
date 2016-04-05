//
//  ViewController.m
//  3DTouchTest
//
//  Created by 周永 on 16/4/5.
//  Copyright © 2016年 shuige. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()<UIViewControllerPreviewingDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {
        
        [self registerForPreviewingWithDelegate:self sourceView:self.view];
        
    }else{
        
        
    }
    
    [self add3DTouch];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)add3DTouch{
    
    UIApplication *application = [UIApplication sharedApplication];
    //1
    UIApplicationShortcutIcon *icon1 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeDate];
    UIApplicationShortcutItem *item1 = [[UIApplicationShortcutItem alloc] initWithType:@"itme1" localizedTitle:@"3DTouch测试" localizedSubtitle:@"Just For Test" icon:icon1 userInfo:nil];
    //2
    UIApplicationShortcutIcon *icon2 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeCapturePhoto];
    UIApplicationShortcutItem *item2 = [[UIApplicationShortcutItem alloc] initWithType:@"itme1" localizedTitle:@"相机图标" localizedSubtitle:@"Just For Test" icon:icon2 userInfo:nil];
    //3
    UIApplicationShortcutIcon *icon3 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeFavorite];
    UIApplicationShortcutItem *item3 = [[UIApplicationShortcutItem alloc] initWithType:@"itme1" localizedTitle:@"Hello World" localizedSubtitle:@"Just For Test" icon:icon3 userInfo:nil];
    application.shortcutItems = @[item1,item2,item3];
    
    
}


#pragma mark - UIViewControllerPreviewingDelegate

- (UIViewController*)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location{
 
    SecondViewController *second = [[SecondViewController alloc] init];
    second.view.backgroundColor = [UIColor blueColor];
    
    return second;
}

- (void)previewingContext:(id<UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit{
    
    
    
    self.view.backgroundColor = [UIColor redColor];
    
}


@end
