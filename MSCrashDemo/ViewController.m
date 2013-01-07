//
//  ViewController.m
//  MSCrashDemo
//
//  Created by J on 2013/2/26.
//  Copyright © 2013年 J. All rights reserved.
//

#import "ViewController.h"
#import "MSCrashProtector.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //NSArray
    NSArray* arr = @[@"1"];
    [arr objectAtIndexSafe:10];
    id obj = [arr objectAtIndex:0 kindOfClass:[NSString class]];
    NSLog(@"arr:%@",obj);
    
    //NSMutableArray
    NSMutableArray* marr = [NSMutableArray array];
    [marr addObjectSafe:nil];
    [marr removeObjectAtIndexInBoundary:100];
    [marr insertObject:@111 atIndexInBoundary:100];
    NSLog(@"marr:%@",marr);

    //NSDictionary
    NSDictionary* dic = [NSDictionary dictionary];
    [dic objectForKey:nil defaultValue:@"test"];
    NSLog(@"dic:%@",dic);

    //NSMutableDictionary
    NSMutableDictionary* mdic = [NSMutableDictionary dictionary];
    [mdic setObjectSafe:nil forKey:nil];
    NSLog(@"mdic:%@",mdic);
    
    //NSMutableSet
    NSMutableSet * mset = [NSMutableSet set];
    [mset removeObjectSafe:nil];
    [mset addObjectSafe:nil];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

}

@end
