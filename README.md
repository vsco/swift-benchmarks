Swift Compiler optimization level for unit tests set to -O
Apple LLVM 6.0/7.0 Optimization Level set to Fastest, Aggressive Optimizations -Ofast

#iPhone 6 iOS 8.3 Benchmarks
###**Tests written in Objective-C**
#####Shuffle 1,000,000 NSNumber objects in NSMutableArray
|Version|Objective-C|Bridgeable Swift|Swift|
|---|---|---|---|
|Swift 1.1| 0.304 seconds 5% STDEV| 0.376 seconds 1% STDEV|-|
|Swift 1.2| 0.281 seconds 3% STDEV| 0.303 seconds 1% STDEV|-|
|Swift 2.0| 0.270 seconds 2% STDEV| 0.273 seconds 2% STDEV|-|

#####Shuffle 1,000,000 NSString objects in NSMutableArray
|Version|Objective-C|Bridgeable Swift|Swift|
|---|---|---|---|
|Swift 1.1| 1.091 seconds 2% STDEV| 1.290 seconds 3% STDEV|-|
|Swift 1.2| 1.129 seconds 3% STDEV| 1.238 seconds 2% STDEV|-|
|Swift 2.0| 1.106 seconds 2% STDEV| 1.096 seconds 1% STDEV|-|

#####Shuffle 1,000,000 ObjcObject objects in NSMutableArray
|Version|Objective-C|Bridgeable Swift|Swift|
|---|---|---|---|
|Swift 1.1| 0.839 seconds 4% STDEV| 1.014 seconds 4% STDEV|-|
|Swift 1.2| 0.799 seconds 3% STDEV| 0.867 seconds 1% STDEV|-|
|Swift 2.0| 0.791 seconds 4% STDEV| 0.798 seconds 2% STDEV|-|

#####Shuffle 1,000,000 SwiftObject objects in NSMutableArray
|Version|Objective-C|Bridgeable Swift|Swift|
|---|---|---|---|
|Swift 1.1| 0.818 seconds 1% STDEV| 1.015 seconds 1% STDEV|-|
|Swift 1.2| 0.854 seconds 2% STDEV| 0.898 seconds 2% STDEV|-|
|Swift 2.0| 0.808 seconds 2% STDEV| 0.817 seconds 2% STDEV|-|

#####Empty loop 1,000,000 objects with NSMutableArray
|Version|Objective-C|Bridgeable Swift|Swift|
|---|---|---|---|
|Swift 1.1| 0.006 seconds 2% STDEV| 0.005 seconds 9% STDEV|-|
|Swift 1.2| 0.004 seconds 3% STDEV| 0.005 seconds 10% STDEV|-|
|Swift 2.0| 0.004 seconds 3% STDEV| 0.004 seconds 2% STDEV|-|

###**Tests written in Swift**
#####Shuffle 1,000,000 Int objects with Swift implementation taking [AnyObject]
|Version|Objective-C|Bridgeable Swift|Swift|
|---|---|---|---|
|Swift 1.1| 0.296 seconds 1% STDEV |-| 1.616 seconds 2% STDEV|
|Swift 1.2| 0.262 seconds 1% STDEV|-| 0.523 seconds 1% STDEV|
|Swift 2.0| 0.271 seconds 2% STDEV|-| 0.285 seconds 2% STDEV|

#####Shuffle 1,000,000 Int objects with Swift implementation taking [Any]
|Version|Objective-C|Bridgeable Swift|Swift|
|---|---|---|---|
|Swift 1.1| Same as above |-| 0.537 seconds 3% STDEV|
|Swift 1.2| Same as above |-| 0.289 seconds 2% STDEV|
|Swift 2.0| Same as above |-| 0.303 seconds 2% STDEV|

#####Shuffle 1,000,000 Int objects with Swift implementation taking [Int]
|Version|Objective-C|Bridgeable Swift|Swift|
|---|---|---|---|
|Swift 1.1| Same as above |-| 0.181 seconds 2% STDEV|
|Swift 1.2| Same as above |-| 0.189 seconds 2% STDEV|
|Swift 2.0| Same as above |-| 0.197 seconds 5% STDEV|

#####Shuffle 1,000,000 Int objects with Swift implementation taking [T]
|Version|Objective-C|Bridgeable Swift|Swift|
|---|---|---|---|
|Swift 1.1| Same as above |-| 32.627 seconds 1% STDEV|
|Swift 1.2| Same as above |-| 2.155 seconds 1% STDEV|
|Swift 2.0| Same as above |-| 1.478 seconds 2% STDEV|

#####Shuffle 1,000,000 String objects with Swift implementation taking [String]
|Version|Objective-C|Bridgeable Swift|Swift|
|---|---|---|---|
|Swift 1.1| 1.137 seconds 2% STDEV |-| 0.829 seconds 2% STDEV|
|Swift 1.2| 1.112 seconds 3% STDEV |-| 0.891 seconds 3% STDEV|
|Swift 2.0| 1.114 seconds 2% STDEV |-| 0.925 seconds 1% STDEV|

#####Shuffle 1,000,000 ObjcObject objects with Swift implementation taking [ObjcObject]
|Version|Objective-C|Bridgeable Swift|Swift|
|---|---|---|---|
|Swift 1.1| 0.816 seconds 3% STDEV |-| 2.529 seconds 1% STDEV|
|Swift 1.2| 0.794 seconds 2% STDEV |-| 1.252 seconds 1% STDEV|
|Swift 2.0| 0.794 seconds 2% STDEV |-| 0.820 seconds 2% STDEV|

#####Shuffle 1,000,000 SwiftObject objects with Swift implementation taking [SwiftObject]
|Version|Objective-C|Bridgeable Swift|Swift|
|---|---|---|---|
|Swift 1.1| 0.826 seconds 2% STDEV |-| 2.527 seconds 1% STDEV|
|Swift 1.2| 0.795 seconds 2% STDEV |-| 1.352 seconds 1% STDEV|
|Swift 2.0| 0.796 seconds 2% STDEV |-| 0.830 seconds 3% STDEV|

#####Shuffle 1,000,000 SwiftStructObject objects with Swift implementation taking [SwiftStructObject]
|Version|Objective-C|Bridgeable Swift|Swift|
|---|---|---|---|
|Swift 1.1| -|-| 0.070 seconds 1% STDEV|
|Swift 1.2| -|-| 0.065 seconds 3% STDEV|
|Swift 2.0| -|-| 0.067 seconds 2% STDEV|

#####Empty loop 1,000,000 Int objects in [Int]
|Version|Objective-C|Bridgeable Swift|Swift|
|---|---|---|---|
|Swift 1.1| 0.010 seconds 38% STDEV |-| 0.003 seconds 49% STDEV|
|Swift 1.2| 0.005 seconds 10% STDEV |-| 0.001 seconds 20% STDEV|
|Swift 2.0| 0.005 seconds 23% STDEV |-| 0.001 seconds 10% STDEV|
