//
//  ViewController.m
//  CallRestriction
//
//  Created by LeslieHan on 15/6/4.
//  Copyright (c) 2015年 LeslieHan. All rights reserved.
//

#import "ViewController.h"

#import "CallRestriction.h"

@interface ViewController ()

@property (nonatomic,strong) CallRestriction *callRestriction;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)laiba{
    NSLog(@"可以调用了");
}
- (IBAction)zuile:(id)sender {
    [self.callRestriction play:nil];
}



- (CallRestriction *)callRestriction{
    if (!_callRestriction) {
        _callRestriction = [[CallRestriction alloc] init];
        
        [_callRestriction configRestriction:self restrictionAction:@selector(laiba) duration:.5];
        
    }
    return _callRestriction;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
