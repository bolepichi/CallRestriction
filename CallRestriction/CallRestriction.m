//
//  CallRestriction.m
//  CallRestriction
//
//  Created by LeslieHan on 15/6/4.
//  Copyright (c) 2015年 LeslieHan. All rights reserved.
//

#import "CallRestriction.h"

@interface CallRestriction ()


@property (nonatomic,assign) NSTimeInterval  duration;

@property (nonatomic,assign) SEL  restrictionAction;

@property (nonatomic,weak) id delegate;

@property (nonatomic,weak) NSTimer *timer;

@property (nonatomic,strong) id object;

@end

@implementation CallRestriction


+(id)creatRestriction:(id)delegate restrictionAction:(SEL)action  duration:(NSTimeInterval)duration{
    CallRestriction *restriction = [[CallRestriction  alloc] init];
    [restriction configRestriction:delegate restrictionAction:action duration:duration];
    return restriction;
}


-(void)configRestriction:(id)delegate restrictionAction:(SEL)action  duration:(NSTimeInterval)duration;{
    self.delegate = delegate;
    
    self.restrictionAction = action;
    
    self.duration = duration;
    
  
}

-(void)play:(id)object{
      [self.timer   invalidate];
      self.object = object;
      self.timer  = [NSTimer scheduledTimerWithTimeInterval:self.duration target:self selector:@selector(callAction) userInfo:nil repeats:NO];
}

-(void)callAction{
    [self.delegate performSelectorOnMainThread:self.restrictionAction withObject:self.object waitUntilDone:NO];
}

-(void)dealloc{
    self.timer = nil;
}


@end
