//
//  VSCOSwiftBenchmarksTests.m
//  VSCOSwiftBenchmarksTests
//
//  Created by Fiel Guhit on 1/20/15.
//  Copyright (c) 2015 VSCO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ObjectiveCUtils.h"
#import "ObjcObject.h"
#import "VSCOSwiftBenchmarksTests-Swift.h"

@interface VSCOObjectiveCBenchmarksTests : XCTestCase


@end

@implementation VSCOObjectiveCBenchmarksTests

+ (NSMutableArray *)createNSNumberArray
{
    NSMutableArray *array = [NSMutableArray new];
    for (NSUInteger i = 0; i < 1000000; i++) {
        [array addObject:@(i)];
    }
    
    return array;
}

+ (NSMutableArray *)createNSStringArray
{
    NSMutableArray *array = [NSMutableArray new];
    for (NSUInteger i = 0; i < 1000000; i++) {
        [array addObject:[NSString stringWithFormat:@"%lu", (unsigned long)i]];
    }
    
    return array;
}

+ (NSMutableArray *)createArrayWithObjectClass:(Class)objectClass
{
    NSMutableArray *array = [NSMutableArray new];
    for (NSUInteger i = 0; i < 1000000; i++) {
        [array addObject:[objectClass new]];
    }
    
    return array;
}

#pragma mark - Base Case: Shuffle 1,000,000 NSNumber objects in NSMutableArray

- (void)testShuffleNumberObjC
{
    NSMutableArray *objects = [[self class] createNSNumberArray];

    [self measureBlock:^{
        [ObjectiveCUtils shuffleObjects:objects];
    }];
}

- (void)testShuffleNumberSwift
{
    NSMutableArray *objects = [[self class] createNSNumberArray];
    
    [self measureBlock:^{
        [SwiftUtils shuffleObjects:objects];
    }];
}

#pragma mark - Shuffle 1,000,000 NSString objects in NSMutableArray

- (void)testShuffleStringObjC
{
    NSMutableArray *objects = [[self class] createNSStringArray];
    
    [self measureBlock:^{
        [ObjectiveCUtils shuffleObjects:objects];
    }];
}

- (void)testShuffleStringSwift
{
    NSMutableArray *objects = [[self class] createNSStringArray];
    
    [self measureBlock:^{
        [SwiftUtils shuffleObjects:objects];
    }];
}

#pragma mark - Shuffle 1,000,000 ObjcObject objects in NSMutableArray

- (void)testShuffleObjcObjectsObjC
{
    NSMutableArray *objects = [[self class] createArrayWithObjectClass:[ObjcObject class]];
    
    [self measureBlock:^{
        [ObjectiveCUtils shuffleObjects:objects];
    }];
}

- (void)testShuffleObjcObjectsSwift
{
    NSMutableArray *objects = [[self class] createArrayWithObjectClass:[ObjcObject class]];
    
    [self measureBlock:^{
        [SwiftUtils shuffleObjects:objects];
    }];
}

#pragma mark - Shuffle 1,000,000 SwiftObject objects in NSMutableArray

- (void)testShuffleSwiftObjectsObjC
{
    NSMutableArray *objects = [[self class] createArrayWithObjectClass:[SwiftObject class]];
    
    [self measureBlock:^{
        [ObjectiveCUtils shuffleObjects:objects];
    }];
}

- (void)testShuffleSwiftObjectsSwift
{
    NSMutableArray *objects = [[self class] createArrayWithObjectClass:[SwiftObject class]];
    
    [self measureBlock:^{
        [SwiftUtils shuffleObjects:objects];
    }];
}

#pragma mark - Iterate 1,000,000 objects with NSMutableArray

- (void)testIterateObjectsObjC
{
    NSMutableArray *objects = [[self class] createNSNumberArray];
    
    [self measureBlock:^{
        [ObjectiveCUtils iterateEmptyLoop:objects];
    }];
}

- (void)testIterateObjectsSwift
{
    NSMutableArray *objects = [[self class] createNSNumberArray];
    
    [self measureBlock:^{
        [SwiftUtils iterateEmptyLoop:objects];
    }];
}

#pragma mark - Call empty class method no parameters

- (void)testCallEmptyClassMethodObjC
{
    [self measureBlock:^{
        [ObjectiveCUtils emptyMethod];
    }];
}

- (void)testCallEmptyClassMethodSwift
{
    [self measureBlock:^{
        [SwiftUtils emptyMethod];
    }];
}

@end
