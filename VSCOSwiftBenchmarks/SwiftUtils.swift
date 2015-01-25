//
//  SwiftUtils.swift
//  VSCOSwiftBenchmarks
//
//  Created by Fiel Guhit on 1/20/15.
//  Copyright (c) 2015 VSCO. All rights reserved.
//

import Foundation

class SwiftUtils: NSObject {
    
    @objc class func shuffleObjects(array: NSMutableArray) {
        for (var i = 0; i < array.count; i++) {
            let currentObject: AnyObject = array[i]
            let randomIndex = Int(arc4random()) % array.count
            let randomObject: AnyObject = array[randomIndex]
            
            array[i] = randomObject;
            array[randomIndex] = currentObject
        }
    }
    
    class func shuffleAnyObjectObjects(inout array: [AnyObject]) {
        for (var i = 0; i < array.count; i++) {
            let currentObject: AnyObject = array[i]
            let randomIndex = Int(arc4random()) % array.count
            let randomObject: AnyObject = array[randomIndex]
            
            array[i] = randomObject;
            array[randomIndex] = currentObject
        }
    }
    
    class func shuffleAny(inout array: [Any]) {
        for (var i = 0; i < array.count; i++) {
            let currentObject: Any = array[i]
            let randomIndex = Int(arc4random()) % array.count
            let randomObject: Any = array[randomIndex]
            
            array[i] = randomObject;
            array[randomIndex] = currentObject
        }
    }
    
    class func shuffleIntObjects(inout array: [Int]) {
        for (var i = 0; i < array.count; i++) {
            let currentObject: Int = array[i]
            let randomIndex = Int(arc4random()) % array.count
            let randomObject: Int = array[randomIndex]
            
            array[i] = randomObject;
            array[randomIndex] = currentObject
        }
    }
    
    class func shuffleGenericObjects<T>(inout array:[T]) {
        for (var i = 0; i < array.count; i++) {
            let currentObject: T = array[i]
            let randomIndex = Int(arc4random()) % array.count
            let randomObject: T = array[randomIndex]
            
            array[i] = randomObject;
            array[randomIndex] = currentObject
        }
    }
    
    class func shuffleStringObjects(inout array:[String]) {
        for (var i = 0; i < array.count; i++) {
            let currentObject: String = array[i]
            let randomIndex = Int(arc4random()) % array.count
            let randomObject: String = array[randomIndex]
            
            array[i] = randomObject;
            array[randomIndex] = currentObject
        }
    }
    
    class func shuffleObjcObjects(inout array:[ObjcObject]) {
        for (var i = 0; i < array.count; i++) {
            let currentObject: ObjcObject = array[i]
            let randomIndex = Int(arc4random()) % array.count
            let randomObject: ObjcObject = array[randomIndex]
            
            array[i] = randomObject;
            array[randomIndex] = currentObject
        }
    }
    
    class func shuffleSwiftObjects(inout array:[SwiftObject]) {
        for (var i = 0; i < array.count; i++) {
            let currentObject: SwiftObject = array[i]
            let randomIndex = Int(arc4random()) % array.count
            let randomObject: SwiftObject = array[randomIndex]
            
            array[i] = randomObject;
            array[randomIndex] = currentObject
        }
    }
    
    class func shuffleSwiftStructObjects(inout array:[SwiftStructObject]) {
        for (var i = 0; i < array.count; i++) {
            let currentObject: SwiftStructObject = array[i]
            let randomIndex = Int(arc4random()) % array.count
            let randomObject: SwiftStructObject = array[randomIndex]
            
            array[i] = randomObject;
            array[randomIndex] = currentObject
        }
    }
    
    @objc class func iterateEmptyLoop(array: NSMutableArray) {
        for (var i = 0; i < array.count; i++) {
            
        }
    }
    
    class func iterateEmptyLoopForSwiftArray(array: [Int]) {
        for (var i = 0; i < array.count; i++) {
            
        }
    }
    
    class func shuffleGenericObjectsFinal<T>(inout array:[T]) {
        for (var i = 0; i < array.count; i++) {
            let currentObject: T = array[i]
            let randomIndex = Int(arc4random()) % array.count
            let randomObject: T = array[randomIndex]
            
            array[i] = randomObject;
            array[randomIndex] = currentObject
        }
    }
    
    class func emptyMethod() {
        
    }
    
    class func sortObjects<T>(inout array:[T]) {
        // TODO: Benchmark me
    }
}
