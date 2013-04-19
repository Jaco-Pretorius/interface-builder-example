//
//  ViewController.m
//  InterfaceBuilderExample
//
//  Created by Jaco on 4/19/13.
//  Copyright (c) 2013 Jaco. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *monkeyImage;
@end

@implementation ViewController

- (IBAction)animate:(UIButton *)sender
{
    [UIView animateWithDuration:0.3f animations:^{
        self.monkeyImage.center = CGPointMake(self.monkeyImage.center.x, self.monkeyImage.center.y + 188);
    } completion:^(BOOL finished) {
        UIImageView *zebra = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"zebra"]];
        zebra.frame = CGRectMake(0, 300, 128, 120);
        [self.view addSubview:zebra];
    }];
}
@end
