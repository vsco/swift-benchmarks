//
//  VSCOSwiftBenchmarksTests.swift
//  VSCOSwiftBenchmarks
//
//  Created by Fiel Guhit on 1/20/15.
//  Copyright (c) 2015 VSCO. All rights reserved.
//

import UIKit
import XCTest

class VSCOSwiftBenchmarksTests: XCTestCase {
    var objects:[Int]!
    
    override func setUp() {
        super.setUp()
        
        objects = [Int]()
        
        for (var i = 0; i < 1000000; i++) {
            objects.append(i)
        }
    }
    
    override func tearDown() {
        objects = nil
        
        super.tearDown()
    }
    
    // MARK: Base Case: Shuffle 1,000,000 Int objects in [AnyObject] array
    
    func testShuffleAnyObjectObjC() {
        self.measureBlock() { [weak self] in
            let mutableArrayObjects = NSMutableArray(array: self!.objects)
            ObjectiveCUtils.shuffleObjects(mutableArrayObjects)
        }
    }
    
    func testShuffleAnyObjectSwift() {
        var anyObjects = [AnyObject]()
        for (var i = 0; i < 1000000; i++) {
            anyObjects.append(i)
        }
        
        self.measureBlock() {
            SwiftUtils.shuffleAnyObjectObjects(&anyObjects)
        }
    }
    
    // MARK: Shuffle 1,000,000 Int objects in [Int] array
    
    func testShuffleIntObjC() {
        // Same as testShuffleAnyObjectObjC
    }
    
    func testShuffleIntSwift() {
        self.measureBlock() { [weak self] in
            SwiftUtils.shuffleIntObjects(&self!.objects!)
        }
    }
    
    // MARK: Shuffle 1,000,000 Int objects in [T] array
    
    func testShuffleGenericObjC() {
        // Same as testShuffleAnyObjectObjC
    }
    
    func testShuffleGenericSwift() {
        self.measureBlock() { [weak self] in
            SwiftUtils.shuffleGenericObjects(&self!.objects!)
        }
    }
    
    // MARK: Shuffle 1,000,000 String objects in [String] array
    
    func testShuffleStringObjC() {
        var stringObjects = [String]()
        for (var i = 0; i < 1000000; i++) {
            stringObjects.append("\(i)")
        }
        
        self.measureBlock() {
            let mutableArrayObjects = NSMutableArray(array: stringObjects)
            ObjectiveCUtils.shuffleObjects(mutableArrayObjects)
        }
    }
    
    func testShuffleStringSwift() {
        var stringObjects = [String]()
        for (var i = 0; i < 1000000; i++) {
            stringObjects.append("\(i)")
        }
        
        self.measureBlock() {
            SwiftUtils.shuffleStringObjects(&stringObjects)
        }
    }
    
    // MARK: Iterate 1,000,000 objects with [Int] array
    func testIterateObjectsObjC() {
        self.measureBlock() { [weak self] in
            let mutableArrayObjects = NSMutableArray(array: self!.objects)
            ObjectiveCUtils.iterateEmptyLoop(mutableArrayObjects)
        }
    }
    
    func testIterateObjectsSwift() {
        self.measureBlock() { [weak self] in
            SwiftUtils.iterateEmptyLoopForSwiftArray(self!.objects!)
        }
    }
    
    // MARK: Call empty class method no parameters
    
    func testCallEmptyClassMethodObjC() {
        self.measureBlock() {
            ObjectiveCUtils.emptyMethod()
        }
    }
    
    func testCallEmptyClassMethodSwift() {
        self.measureBlock() {
            SwiftUtils.emptyMethod()
        }
    }
}
