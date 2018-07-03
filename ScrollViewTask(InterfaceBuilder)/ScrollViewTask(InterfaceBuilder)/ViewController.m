//
//  ViewController.m
//  ScrollViewTask(InterfaceBuilder)
//
//  Created by Dmitriy Tarelkin on 3/7/18.
//  Copyright © 2018 Dmitriy Tarelkin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIView *redView;
@property (weak, nonatomic) IBOutlet UIView *blueView;

@end

@implementation ViewController


#pragma mark - ViewController lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = self.redView.backgroundColor;
    self.scrollView.delegate = self;
    self.scrollView.layer.cornerRadius = 30;
    self.scrollView.layer.borderWidth = 3;
    self.scrollView.layer.borderColor = UIColor.greenColor.CGColor;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}







#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    NSLog(@"red:%@",NSStringFromCGRect(self.redView.frame));
//    NSLog(@"%@",NSStringFromCGSize(self.scrollView.contentSize));
//    NSLog(@"blue:%@",NSStringFromCGRect(self.blueView.frame));
//    NSLog(@"1 scrollViewDidScroll");
}


- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    NSLog(@"2 scrollViewWillBeginDragging");
}


- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {
    NSLog(@"3 scrollViewWillEndDragging");
}


- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    NSLog(@"4 scrollViewDidEndDragging");
}


- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    NSLog(@"5 scrollViewWillBeginDecelerating");
}


- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSLog(@"6 scrollViewDidEndDecelerating");
    
    //changing viewController view's color
    if (self.scrollView.contentOffset.x < self.scrollView.contentSize.width / 2) {
        self.view.backgroundColor = UIColor.redColor;
    }else {
        self.view.backgroundColor = UIColor.blueColor;
    }
}


- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    NSLog(@"7 scrollViewDidEndScrollingAnimation");
}



@end
