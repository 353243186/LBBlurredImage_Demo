//
//  ViewController.m
//  LBBlurredImage_Demo
//
//  Created by admin on 16/6/27.
//  Copyright © 2016年 AlezJi. All rights reserved.
//
//https://github.com/lukabernardi/LBBlurredImage
//毛玻璃

//http://www.jianshu.com/p/6dd0eab888a6


#import "ViewController.h"
#import "UIImageView+LBBlurredImage.h"
//#import "UIImage+ImageEffects.h"

@interface ViewController ()
@property(strong,nonatomic)UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    self.imageView.image = [UIImage imageNamed:@"gyy.png"];
    [self.view addSubview:self.imageView];
    
    
        [self.imageView setImageToBlur:[UIImage imageNamed:@"gyy"]
                        blurRadius:kLBBlurredImageDefaultBlurRadius
                   completionBlock:^(){
                       NSLog(@"毛玻璃效果已经设置成功了");
                   }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
