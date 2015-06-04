//
//  CallRestriction.h
//  CallRestriction
//
//  Created by LeslieHan on 15/6/4.
//  Copyright (c) 2015年 LeslieHan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CallRestriction : NSObject


+(id)creatRestriction:(id)delegate restrictionAction:(SEL)action  duration:(NSTimeInterval)duration;

-(void)configRestriction:(id)delegate restrictionAction:(SEL)action  duration:(NSTimeInterval)duration;

-(void)play:(id)object;

@end
