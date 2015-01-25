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
    
    class func createNSMutableArray<T: AnyObject>(objectFunc: Int -> T) -> NSMutableArray {
        let mutableArrayObjects = NSMutableArray()
        for (var i = 0; i < 1000000; i++) {
            mutableArrayObjects.addObject(objectFunc(i))
        }
        
        return mutableArrayObjects
    }
    
    class func createSwiftArray<T>(objectFunc: Int -> T) -> [T] {
        var objects = [T]()
        for (var i = 0; i < 1000000; i++) {
            objects.append(objectFunc(i))
        }
        
        return objects
    }
    
    // MARK: Base Case: Shuffle 1,000,000 Int objects in [AnyObject] array
    
    func testShuffleAnyObjectObjC() {
        let mutableArrayObjects = self.dynamicType.createNSMutableArray() { index -> NSNumber in
            return NSNumber(integer: index)
        }
        
        self.measureBlock() {
            ObjectiveCUtils.shuffleObjects(mutableArrayObjects)
        }
    }
    
    func testShuffleAnyObjectSwift() {
        var anyObjects = self.dynamicType.createSwiftArray() { index -> AnyObject in
            return index
        }
        
        self.measureBlock() {
            SwiftUtils.shuffleAnyObjectObjects(&anyObjects)
        }
    }
    
    // MARK: Shuffle 1,000,000 Int objects in [Any] array
    
    func testShuffleAnyObjC() {
        // Same as testShuffleAnyObjectObjC
    }
    
    func testShuffleAnySwift() {
        var anyObjects = self.dynamicType.createSwiftArray() { index -> Any in
            return index
        }
        
        self.measureBlock() {
            SwiftUtils.shuffleAny(&anyObjects)
        }
    }
    
    // MARK: Shuffle 1,000,000 Int objects in [Int] array
    
    func testShuffleIntObjC() {
        // Same as testShuffleAnyObjectObjC
    }
    
    func testShuffleIntSwift() {
        var objects = self.dynamicType.createSwiftArray() { index -> Int in
            return index
        }
        
        self.measureBlock() {
            SwiftUtils.shuffleIntObjects(&objects)
        }
    }
    
    // MARK: Shuffle 1,000,000 Int objects in [T] array
    
    func testShuffleGenericObjC() {
        // Same as testShuffleAnyObjectObjC
    }
    
    func testShuffleGenericSwift() {
        var objects = self.dynamicType.createSwiftArray() { index -> Int in
            return index
        }
        
        self.measureBlock() {
            SwiftUtils.shuffleGenericObjects(&objects)
        }
    }
    
    // MARK: Shuffle 1,000,000 String objects in [String] array
    
    func testShuffleStringObjC() {
        let mutableArrayObjects = self.dynamicType.createNSMutableArray() { index -> NSString in
            return NSString(string: "\(index)")
        }
        
        self.measureBlock() {
            ObjectiveCUtils.shuffleObjects(mutableArrayObjects)
        }
    }
    
    func testShuffleStringSwift() {
        var stringObjects = self.dynamicType.createSwiftArray() { index -> String in
            return "\(index)"
        }
        
        self.measureBlock() {
            SwiftUtils.shuffleStringObjects(&stringObjects)
        }
    }
    
    // MARK: Shuffle 1,000,000 ObjcObject objects in [ObjcObject] array
    
    func testShuffleObjcObjectObjC() {
        let mutableArrayObjects = self.dynamicType.createNSMutableArray() { index -> ObjcObject in
            return ObjcObject()
        }
        
        self.measureBlock() {
            ObjectiveCUtils.shuffleObjects(mutableArrayObjects)
        }
    }
    
    func testShuffleObjcObjectSwift() {
        var objcObjects = self.dynamicType.createSwiftArray() { index -> ObjcObject in
            return ObjcObject()
        }
        
        self.measureBlock() {
            SwiftUtils.shuffleObjcObjects(&objcObjects)
        }
    }
    
    // MARK: Shuffle 1,000,000 SwiftObject objects in [SwiftObject] array
    
    func testShuffleSwiftObjectObjC() {
        let mutableArrayObjects = self.dynamicType.createNSMutableArray() { index -> SwiftObject in
            return SwiftObject()
        }
        
        self.measureBlock() {
            ObjectiveCUtils.shuffleObjects(mutableArrayObjects)
        }
    }
    
    func testShuffleSwiftObjectSwift() {
        var swiftObjects = self.dynamicType.createSwiftArray() { index -> SwiftObject in
            return SwiftObject()
        }
        
        self.measureBlock() {
            SwiftUtils.shuffleSwiftObjects(&swiftObjects)
        }
    }
    
    // MARK: Shuffle 1,000,000 SwiftStructObject objects in [SwiftStructObject] array
    
    func testShuffleSwiftStructObjectObjC() {
        // Cannot add SwiftStructObject to NSMutableArray
    }
    
    func testShuffleSwiftStructObjectSwift() {
        var swiftObjects = self.dynamicType.createSwiftArray() { index -> SwiftStructObject in
            return SwiftStructObject()
        }
        
        self.measureBlock() {
            SwiftUtils.shuffleSwiftStructObjects(&swiftObjects)
        }
    }
    
    // MARK: Iterate 1,000,000 objects with [Int] array
    func testIterateObjectsObjC() {
        let mutableArrayObjects = self.dynamicType.createNSMutableArray() { index -> NSNumber in
            return NSNumber(integer: index)
        }
        
        self.measureBlock() {
            ObjectiveCUtils.iterateEmptyLoop(mutableArrayObjects)
        }
    }
    
    func testIterateObjectsSwift() {
        var intObjects = self.dynamicType.createSwiftArray() { index -> Int in
            return index
        }
        
        self.measureBlock() {
            SwiftUtils.iterateEmptyLoopForSwiftArray(intObjects)
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
