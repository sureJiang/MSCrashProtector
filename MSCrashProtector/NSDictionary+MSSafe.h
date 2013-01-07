//
//  NSDictionary+MSSafe.h
//  
//
//  Created by J on 2014/2/26.
//  Copyright © 2014年 J. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <libkern/OSAtomic.h>

@interface NSDictionary (MSSafe)

- (int)intForKey:(NSString *)aKey defaultValue:(int)value;
- (id)objectForKey:(NSString *)aKey defaultValue:(id)value;
- (BOOL)boolForKey:(NSString *)aKey defaultValue:(BOOL)value;

- (id)objectForKey:(NSString *)aKey kindOfClass:(Class)aClass;
- (id)objectForKey:(NSString *)aKey memberOfClass:(Class)aClass;

- (float)floatForKey:(NSString *)aKey defaultValue:(float)value;
- (double)doubleForKey:(NSString *)aKey defaultValue:(double)value;
- (NSData *)dataForKey:(NSString *)aKey defaultValue:(NSData *)value;
- (NSDate *)dateForKey:(NSString *)aKey defaultValue:(NSDate *)value;
- (NSArray *)arrayForKey:(NSString *)aKey defaultValue:(NSArray *)value;
- (NSInteger)integerForKey:(NSString *)aKey defaultValue:(NSInteger)value;
- (NSNumber *)numberForKey:(NSString *)aKey defaultValue:(NSNumber *)value;
- (NSString *)stringForKey:(NSString *)aKey defaultValue:(NSString *)value;
- (long long)longLongValueForKey:(NSString *)aKey defaultValue:(long long)value;
- (NSUInteger)unsignedIntegerForKey:(NSString *)aKey defaultValue:(NSUInteger)value;
- (NSDictionary *)dictionaryForKey:(NSString *)aKey defaultValue:(NSDictionary *)value;

@end

@interface NSMutableDictionary (MSSafe)

- (void)setObjectSafe:(id)value forKey:(id)aKey;
- (void)setInt:(int)value forKey:(NSString *)aKey;
- (void)setBool:(BOOL)value forKey:(NSString *)aKey;
- (void)setFloat:(float)value forKey:(NSString *)aKey;
- (void)setDouble:(double)value forKey:(NSString *)aKey;
- (void)setString:(NSString *)value forKey:(NSString *)aKey;
- (void)setNumber:(NSNumber *)value forKey:(NSString *)aKey;
- (void)setInteger:(NSInteger)value forKey:(NSString *)aKey;
- (void)setLongLongValue:(long long)value forKey:(NSString *)aKey;

@end
