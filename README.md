*Swift unit tests compiled at Fastest[-O] Optimization Level*
*Apple LLVM 6.0 Optimization Level set to Fastest, Aggressive Optimizations -Ofast*

###NSMutableArray Unit Test

Shuffle 100,000 NSNumber objects in NSMutableArray

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.016135 seconds| 0.022997 seconds|


Shuffle 1,000,000 NSNumber objects in NSMutableArray

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.193394 seconds| 0.263660 seconds|

Shuffle 1,000,000 Int objects in [Int] with Swift Project default implementation of Int and use Swift View Controller as caller

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.370280 seconds| 0.0822709 seconds|

Empty loop 1,000,000 objects with NSMutableArray

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.004 seconds| 0.003 seconds|

Empty implementation no parameters

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.000013 seconds| 0.000007 seconds|

Console log implementation no parameters

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.000689 seconds| 0.000143 seconds|

###Swift Array Unit Test

Shuffle 1,000,000 Int objects in [AnyObject] with default implementation

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.298 with conversion to NSMutableArray | 0.417 seconds|

Shuffle 1,000,000 Int objects with default implementation passing [Int]

| ObjectiveCUtils| SwiftUtils|
|---|---|
| Same as above | 0.084 seconds|

Shuffle 1,000,000 Int objects with default implementation passing [T]

| ObjectiveCUtils| SwiftUtils|
|---|---|
| Same as above | 10.498 seconds|

Shuffle 1,000,000 String objects with default implementation passing [String]

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 1.193 with conversion to NSMutableArray | 0.361 seconds|

Empty loop 1,000,000 String objects in [Int]

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.115 with conversion to NSMutableArray | 0.001 seconds|

Empty implementation no parameters

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.000 seconds | 0.000 seconds|
