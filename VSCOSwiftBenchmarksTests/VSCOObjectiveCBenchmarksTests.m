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
#import "VSCOSwiftBenchmarksTests-Swift.h"

@interface VSCOObjectiveCBenchmarksTests : XCTestCase

@property (nonatomic, strong) NSMutableArray *objects;

@end

@implementation VSCOObjectiveCBenchmarksTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.objects = [NSMutableArray new];
    for (NSUInteger i = 0; i < 1000000; i++) {
        [self.objects addObject:@(i)];
    }
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.objects = nil;
    
    [super tearDown];
}

#pragma mark - Base Case: Shuffle 1,000,000 NSNumber objects in NSMutableArray

- (void)testShuffleNumberObjC
{
    [self measureBlock:^{
        [ObjectiveCUtils shuffleObjects:self.objects];
    }];
}

- (void)testShuffleNumberSwift
{
    [self measureBlock:^{
        [SwiftUtils shuffleObjects:self.objects];
    }];
}

#pragma mark - Iterate 1,000,000 objects with NSMutableArray

- (void)testIterateObjectsObjC
{
    [self measureBlock:^{
        [ObjectiveCUtils iterateEmptyLoop:self.objects];
    }];
}

- (void)testIterateObjectsSwift
{
    [self measureBlock:^{
        [SwiftUtils iterateEmptyLoop:self.objects];
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
