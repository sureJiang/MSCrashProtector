//
//  NSString+MSSafe.h
//
//
//  Created by J on 2014/2/27.
//  Copyright © 2014年 J. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MSSafe)

- (BOOL)isNotEmpty;
- (BOOL)isNotBlank;

@end
