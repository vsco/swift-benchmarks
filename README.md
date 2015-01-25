*Swift unit tests compiled at Fastest[-O] Optimization Level*

*Apple LLVM 6.0 Optimization Level set to Fastest, Aggressive Optimizations -Ofast*

*All data was gathered running the iPhone 6 Simulator on a 2.8 GHz Intel Core i7 8GB RAM MacBook Pro*


|| ObjectiveCUtils| @objc SwiftUtils| SwiftUtils|
|---|---|---|---|
|**Objective-C Unit Test**|
|Shuffle 100,000 NSNumber objects in NSMutableArray| 0.012 seconds 9% STDEV| 0.023 seconds 6% STDEV|-|
|Shuffle 1,000,000 NSNumber objects in NSMutableArray| 0.197 seconds 3% STDEV| 0.289 seconds 5% STDEV|-|
|Shuffle 1,000,000 NSString objects in NSMutableArray| 0.440 seconds 2% STDEV| 0.499 seconds 2% STDEV|-|
|Shuffle 1,000,000 ObjcObject objects in NSMutableArray| 0.569 seconds 1% STDEV| 0.630 seconds 1% STDEV|-|
|Shuffle 1,000,000 SwiftObject objects in NSMutableArray| 0.595 seconds 2% STDEV| 0.629 seconds 1% STDEV|-|
|Empty loop 1,000,000 objects with NSMutableArray| 0.003 seconds 9% STDEV| 0.004 seconds 11% STDEV|-|
|Empty implementation no parameters| 0.000013 seconds| 0.000007 seconds|-|
|Console log implementation no parameters| 0.000689 seconds| 0.000143 seconds|-|
|**Swift Unit Test**|
|Shuffle 1,000,000 Int objects with Swift implementation taking [AnyObject]| 0.122 seconds 2% STDEV |-| 0.452 seconds 2% STDEV|
|Shuffle 1,000,000 Int objects with Swift implementation taking [Any]| Same as above |-| 0.220 seconds 3% STDEV|
|Shuffle 1,000,000 Int objects with Swift implementation taking [Int]| Same as above |-| 0.064 seconds 3% STDEV|
|Shuffle 1,000,000 Int objects with Swift implementation taking [T]| Same as above |-| 10.115 seconds 3% STDEV|
|Shuffle 1,000,000 String objects with Swift implementation taking [String]| 0.385 seconds 3% STDEV |-| 0.302 seconds 1% STDEV|
|Shuffle 1,000,000 ObjcObject objects with Swift implementation taking [ObjcObject]| 0.513 seconds 1% STDEV |-| 0.939 seconds 1% STDEV|
|Shuffle 1,000,000 SwiftObject objects with Swift implementation taking [SwiftObject]| 0.512 seconds 1% STDEV |-| 0.949 seconds 1% STDEV|
|Shuffle 1,000,000 SwiftStructObject objects with Swift implementation taking [SwiftStructObject]|-|-| 0.027 seconds 5% STDEV|
|Empty loop 1,000,000 String objects in [Int]| 0.004 seconds 12% STDEV |-| 0.001 seconds 5% STDEV|
|Empty implementation no parameters| 0.000 seconds |-| 0.000 seconds|
