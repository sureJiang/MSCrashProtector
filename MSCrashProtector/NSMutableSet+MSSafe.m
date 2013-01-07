//
//  NSMutableSet+MSSafe.m
//  
//
//  Created by J on 2014/2/27.
//  Copyright © 2014年 J. All rights reserved.
//

#import "NSMutableSet+MSSafe.h"

@implementation NSMutableSet (MSSafe)

// 排除nil
- (void)addObjectSafe:(id)object{
    
    if(!object)return;
    [self addObject:object];
}

- (void)removeObjectSafe:(id)object{
    
    if(!object)return;
    [self removeObject:object];
}

@end
