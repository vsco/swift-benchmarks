//
//  ObjectiveCUtils.m
//  VSCOSwiftBenchmarks
//
//  Created by Fiel Guhit on 1/11/15.
//  Copyright (c) 2015 VSCO. All rights reserved.
//

#import "ObjectiveCUtils.h"

@implementation ObjectiveCUtils

+ (void)shuffleObjects:(NSMutableArray *)array
{
    for (NSInteger i = 0; i < [array count]; i++) {
        id currentObject = array[i];
        NSUInteger randomIndex = arc4random() % array.count;
        id randomObject = array[randomIndex];
        
        array[i] = randomObject;
        array[randomIndex] = currentObject;
    }
}

+ (void)iterateEmptyLoop:(NSMutableArray *)array
{
    for (NSInteger i = 0; i < [array count]; i++) {
        
    }
}

+ (void)emptyMethod
{
    
}

+ (void)sortObjects:(NSMutableArray *)array
{
    // TODO: Benchmark me
}

@end
