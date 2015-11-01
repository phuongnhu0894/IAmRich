//
//  ViewController.m
//  IAmRich
//
//  Created by Phuong on 11/1/15.
//  Copyright © 2015 Appcoda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *pictureImageview;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topConstraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pictureImageview.alpha = 0;
    self.textLabel.alpha = 0;
    
}
- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [UIView animateWithDuration:5 animations:^{
        self.pictureImageview.alpha = 1;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:2 animations:^{
            self.textLabel.alpha = 1;
            self.topConstraint.constant = 20;
            [self.view layoutIfNeeded];
        }];
    }];

}



@end
