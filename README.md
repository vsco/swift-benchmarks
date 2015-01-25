*Swift unit tests compiled at Fastest[-O] Optimization Level*

*Apple LLVM 6.0 Optimization Level set to Fastest, Aggressive Optimizations -Ofast*

*All data was gathered running the iPhone 6 Simulator on a 2.8 GHz Intel Core i7 8GB RAM MacBook Pro*

###Objective-C Unit Test

Shuffle 100,000 NSNumber objects in NSMutableArray

| ObjectiveCUtils| @objc SwiftUtils|
|---|---|
| 0.012 seconds 9% STDEV| 0.023 seconds 6% STDEV|

Shuffle 1,000,000 NSNumber objects in NSMutableArray

| ObjectiveCUtils| @objc SwiftUtils|
|---|---|
| 0.197 seconds 3% STDEV| 0.289 seconds 5% STDEV|

Shuffle 1,000,000 NSString objects in NSMutableArray

| ObjectiveCUtils| @objc SwiftUtils|
|---|---|
| 0.440 seconds 2% STDEV| 0.499 seconds 2% STDEV|

Shuffle 1,000,000 ObjcObject objects in NSMutableArray

| ObjectiveCUtils| @objc SwiftUtils|
|---|---|
| 0.569 seconds 1% STDEV| 0.630 seconds 1% STDEV|

Shuffle 1,000,000 SwiftObject objects in NSMutableArray

| ObjectiveCUtils| @objc SwiftUtils|
|---|---|
| 0.595 seconds 2% STDEV| 0.629 seconds 1% STDEV|

Empty loop 1,000,000 objects with NSMutableArray

| ObjectiveCUtils| @objc SwiftUtils|
|---|---|
| 0.003 seconds 9% STDEV| 0.004 seconds 11% STDEV|

Empty implementation no parameters

| ObjectiveCUtils| @objc SwiftUtils|
|---|---|
| 0.000013 seconds| 0.000007 seconds|

Console log implementation no parameters

| ObjectiveCUtils| @objc SwiftUtils|
|---|---|
| 0.000689 seconds| 0.000143 seconds|

###Swift Unit Test

Shuffle 1,000,000 Int objects with Swift implementation taking [AnyObject]

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.202 seconds 3% STDEV | 0.452 seconds 2% STDEV|

Shuffle 1,000,000 Int objects with Swift implementation taking [Int]

| ObjectiveCUtils| SwiftUtils|
|---|---|
| Same as above | 0.081 seconds 4% STDEV|

Shuffle 1,000,000 Int objects with Swift implementation taking [T]

| ObjectiveCUtils| SwiftUtils|
|---|---|
| Same as above | 13.256 seconds 11% STDEV|

Shuffle 1,000,000 String objects with Swift implementation taking [String]

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.446 seconds 3% STDEV | 0.321 seconds 2% STDEV|

Shuffle 1,000,000 ObjcObject objects with Swift implementation taking [ObjcObject]

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.584 seconds 2% STDEV | 0.983 seconds 2% STDEV|

Shuffle 1,000,000 SwiftObject objects with Swift implementation taking [SwiftObject]

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.577 seconds 1% STDEV | 0.950 seconds 2% STDEV|

Shuffle 1,000,000 SwiftStructObject objects with Swift implementation taking [SwiftStructObject]

| ObjectiveCUtils| SwiftUtils|
|---|---|
| N/A | 0.029 seconds 5% STDEV|

Empty loop 1,000,000 String objects in [Int]

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.004 seconds 12% STDEV | 0.001 seconds 5% STDEV|

Empty implementation no parameters

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.000 seconds | 0.000 seconds|
