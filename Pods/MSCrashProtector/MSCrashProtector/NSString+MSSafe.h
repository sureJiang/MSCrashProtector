//
//  NSString+MSSafe.h
//
//
//  Created by J on 2013/2/27.
//  Copyright © 2013年 J. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MSSafe)

- (BOOL)isNotEmpty;
- (BOOL)isNotBlank;

@end
