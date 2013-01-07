//
//  NSArray+MSSafe.m
//  
//
//  Created by J on 2014/2/26.
//  Copyright © 2017年 J. All rights reserved.
//

#import "NSArray+MSSafe.h"

@implementation NSArray (MSSafe)

- (id)objectAtIndexSafe:(NSUInteger)index{
    
    id object = nil;
    if (self.count > index) {
        object =  [self objectAtIndex:index];
    }
    return object;
}

- (id)objectAtIndex:(NSUInteger)index kindOfClass:(Class)aClass{
    
    id object = nil;
    id obj = [self objectAtIndexSafe:index];
    if([obj isKindOfClass:aClass]){
         object = obj;
     }
    return object;
}

- (id)objectAtIndex:(NSUInteger)index memberOfClass:(Class)aClass{
    
    id object = nil;
    id obj = [self objectAtIndexSafe:index];
    if([obj isMemberOfClass:aClass]){
        object = obj;
    }
    return object;
}

- (id)objectAtIndex:(NSUInteger)index defaultValue:(id)value{
    
    id object = [self objectAtIndexSafe:index];
    if(!object) object = value;
    return value;
}


- (NSString *)stringAtIndex:(NSUInteger)index defaultValue:(NSString *)value{
    
    id object = [self objectAtIndex:index kindOfClass:NSString.class];
    if(!object){
        object = value;
    }
    return value;
}

- (NSNumber *)numberAtIndex:(NSUInteger)index defaultValue:(NSNumber *)value{
    
    id object = [self objectAtIndex:index kindOfClass:NSNumber.class];
    if(!object){
        object = value;
    }
    return value;
}

- (NSDictionary *)dictionaryAtIndex:(NSUInteger)index defaultValue:(NSDictionary *)value{
    
    id object = [self objectAtIndex:index kindOfClass:NSDictionary.class];
    if(!object){
        object = value;
    }
    return value;
}

- (NSArray *)arrayAtIndex:(NSUInteger)index defaultValue:(NSArray *)value{
    
    id object = [self objectAtIndex:index kindOfClass:NSArray.class];
    if(!object){
        object = value;
    }
    return value;
}

- (NSData *)dataAtIndex:(NSUInteger)index defaultValue:(NSData *)value{
    
    id object = [self objectAtIndex:index kindOfClass:NSData.class];
    if(!object){
        object = value;
    }
    return value;
}

- (NSDate *)dateAtIndex:(NSUInteger)index defaultValue:(NSDate *)value{
    
    id object = [self objectAtIndex:index kindOfClass:NSDate.class];
    if(!object){
        object = value;
    }
    return value;
}

- (float)floatAtIndex:(NSUInteger)index defaultValue:(float)value{
    
    id object = [self objectAtIndexSafe:index];
    if([object respondsToSelector:@selector(floatValue)]){
        return  [object floatValue];
    }
    return value;
}

- (double)doubleAtIndex:(NSUInteger)index defaultValue:(double)value{
    
    id object = [self objectAtIndexSafe:index];
    if([object respondsToSelector:@selector(doubleValue)]){
        return  [object doubleValue];
    }
    return value;
}

- (NSInteger)integerAtIndex:(NSUInteger)index defaultValue:(NSInteger)value{

    id object = [self objectAtIndexSafe:index];
    if([object respondsToSelector:@selector(integerValue)]){
        return  [object integerValue];
    }
    return value;
}

- (NSUInteger)unintegerAtIndex:(NSUInteger)index defaultValue:(NSUInteger)value{
    
    id object = [self objectAtIndexSafe:index];
    if([object respondsToSelector:@selector(unsignedIntegerValue)]){
        return  [object unsignedIntegerValue];
    }
    return value;
}

- (BOOL)boolAtIndex:(NSUInteger)index defaultValue:(BOOL)value{
    
    id object = [self objectAtIndexSafe:index];
    if([object respondsToSelector:@selector(boolValue)]){
        return  [object boolValue];
    }
    return value;
}

@end


@implementation NSMutableArray (MSSafe)

- (void)removeObjectAtIndexInBoundary:(NSUInteger)index{
    
    if(index < self.count){
        [self removeObjectAtIndex:index];
    }
}

- (void)insertObject:(id)anObject atIndexInBoundary:(NSUInteger)index{

    if(index < self.count){
        [self insertObject:anObject atIndex:index];
    }
}

- (void)replaceObjectAtInBoundaryIndex:(NSUInteger)index withObject:(id)anObject{
    
    if(index < self.count && anObject!=nil){
        [self replaceObjectAtIndex:index withObject:anObject];
    }
}

// 排除nil 和 NSNull
- (void)addObjectSafe:(id)anObject{
    
    if(anObject!=nil && ![anObject isKindOfClass:NSNull.class]){
        [self addObject:anObject];
    }
}

@end
