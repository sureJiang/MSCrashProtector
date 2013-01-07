//
//  NSDictionary+MSSafe.m
//  
//
//  Created by J on 2014/2/26.
//  Copyright © 2014年 J. All rights reserved.
//

#import "NSDictionary+MSSafe.h"

@implementation NSDictionary (MSSafe)

- (id)objectForKey:(NSString *)aKey kindOfClass:(Class)aClass {
    id object = [self objectForKey:aKey];
    if (object && [object isKindOfClass:aClass]) {
        return object;
    }
    return nil;
}
- (id)objectForKey:(NSString *)aKey memberOfClass:(Class)aClass {
    id object = [self objectForKey:aKey];
    if (object && [object isMemberOfClass:aClass]) {
        return object;
    }
    return nil;
}

- (id)objectForKey:(NSString *)aKey defaultValue:(id)value{
    
    id object = [self objectForKey:aKey];
    if(!object){
        object = value;
    }
    return object;
}

- (NSString *)stringForKey:(NSString *)aKey defaultValue:(NSString *)value{
    
    id object = [self objectForKey:aKey kindOfClass:NSString.class];
    if(!object){
        object = value;
    }
    return object;
}

- (NSArray *)arrayForKey:(NSString *)aKey defaultValue:(NSArray *)value{
    
    id object = [self objectForKey:aKey kindOfClass:NSArray.class];
    if(!object){
        object = value;
    }
    return object;
}

- (NSDictionary *)dictionaryForKey:(NSString *)aKey defaultValue:(NSDictionary *)value{
    
    id object = [self objectForKey:aKey kindOfClass:NSDictionary.class];
    if(!object){
        object = value;
    }
    return object;
}

- (NSData *)dataForKey:(NSString *)aKey defaultValue:(NSData *)value{
    
    id object = [self objectForKey:aKey kindOfClass:NSData.class];
    if(!object){
        object = value;
    }
    return object;
}

- (NSDate *)dateForKey:(NSString *)aKey defaultValue:(NSDate *)value{
    
    id object = [self objectForKey:aKey kindOfClass:NSDate.class];
    if(!object){
        object = value;
    }
    return object;
}

- (NSNumber *)numberForKey:(NSString *)aKey defaultValue:(NSNumber *)value{
    
    id object = [self objectForKey:aKey kindOfClass:NSNumber.class];
    if(!object){
        object = value;
    }
    return object;
}

- (NSUInteger)unsignedIntegerForKey:(NSString *)aKey defaultValue:(NSUInteger)value{
    
    NSUInteger result = value;
    id object = [self objectForKey:aKey kindOfClass:NSNumber.class] ?: [self objectForKey:aKey kindOfClass:NSString.class];
    if(object){
        result = [object unsignedIntegerValue];
    }
    return result;
}

- (NSInteger)integerForKey:(NSString *)aKey defaultValue:(NSInteger)value{
    
    NSInteger result = value;
    id object = [self objectForKey:aKey kindOfClass:NSNumber.class] ?: [self objectForKey:aKey kindOfClass:NSString.class];
    if(object){
        result = [object integerValue];
    }
    return result;
}

- (float)floatForKey:(NSString *)aKey defaultValue:(float)value{
    
    float result = value;
    id object = [self objectForKey:aKey kindOfClass:NSNumber.class] ?: [self objectForKey:aKey kindOfClass:NSString.class];
    if(object){
        result = [object floatValue];
    }
    return result;
}

- (double)doubleForKey:(NSString *)aKey defaultValue:(double)value{
   
    double result = value;
    id object = [self objectForKey:aKey kindOfClass:NSNumber.class] ?: [self objectForKey:aKey kindOfClass:NSString.class];
    if(object){
        result = [object doubleValue];
    }
    return result;
}

- (long long)longLongValueForKey:(NSString *)aKey defaultValue:(long long)value{
    
    long long result = value;
    id object = [self objectForKey:aKey kindOfClass:NSNumber.class] ?: [self objectForKey:aKey kindOfClass:NSString.class];
    if(object){
        result = [object longLongValue];
    }
    return result;
}

- (BOOL)boolForKey:(NSString *)aKey defaultValue:(BOOL)value{
    
    BOOL result = value;
    id object = [self objectForKey:aKey kindOfClass:NSNumber.class] ?: [self objectForKey:aKey kindOfClass:NSString.class];
    if(object){
        result = [object boolValue];
    }
    return result;
}

- (int)intForKey:(NSString *)aKey defaultValue:(int)value{
    
    int result = value;
    id object = [self objectForKey:aKey kindOfClass:NSNumber.class] ?: [self objectForKey:aKey kindOfClass:NSString.class];
    if(object){
        result = [object intValue];
    }
    return result;
}

@end


@implementation NSMutableDictionary (MSSafe)

- (void)setObjectSafe:(id)value forKey:(id)aKey{
    
    if(value&&aKey){
        [self setObject:value forKey:aKey];
    }
}
- (void)setString:(NSString *)value forKey:(NSString *)aKey{

    if([value isKindOfClass:NSString.class]&&
       [aKey isKindOfClass:NSString.class]){
        
        [self setObject:value forKey:aKey];
    }
}

- (void)setNumber:(NSNumber *)value forKey:(NSString *)aKey{
   
    if([value isKindOfClass:NSNumber.class]&&
       [aKey isKindOfClass:NSString.class]){
        
        [self setObject:value forKey:aKey];
    }
}

- (void)setInteger:(NSInteger)value forKey:(NSString *)aKey{
    
    if([aKey isKindOfClass:NSString.class]){
        [self setObject:@(value) forKey:aKey];
    }
}

- (void)setInt:(int)value forKey:(NSString *)aKey{
    
    if([aKey isKindOfClass:NSString.class]){
        [self setObject:@(value) forKey:aKey];
    }
}

- (void)setFloat:(float)value forKey:(NSString *)aKey{
    
    if([aKey isKindOfClass:NSString.class]){
        [self setObject:@(value) forKey:aKey];
    }
}

- (void)setDouble:(double)value forKey:(NSString *)aKey{
    
    if([aKey isKindOfClass:NSString.class]){
        [self setObject:@(value) forKey:aKey];
    }
}

- (void)setLongLongValue:(long long)value forKey:(NSString *)aKey{
    
    if([aKey isKindOfClass:NSString.class]){
        [self setObject:@(value) forKey:aKey];
    }
}

- (void)setBool:(BOOL)value forKey:(NSString *)aKey{
    
    if([aKey isKindOfClass:NSString.class]){
        [self setObject:@(value) forKey:aKey];
    }
}

@end
