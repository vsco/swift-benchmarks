*Swift unit tests compiled at Fastest[-O] Optimization Level*

*Apple LLVM 6.0 Optimization Level set to Fastest, Aggressive Optimizations -Ofast*

###NSMutableArray Unit Test

Shuffle 100,000 NSNumber objects in NSMutableArray

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.012 seconds 9% STDEV| 0.023 seconds 6% STDEV|

Shuffle 1,000,000 NSNumber objects in NSMutableArray

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.197 seconds 3% STDEV| 0.289 seconds 5% STDEV|

Shuffle 1,000,000 NSString objects in NSMutableArray

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.440 seconds 2% STDEV| 0.499 2% STDEV|

Empty loop 1,000,000 objects with NSMutableArray

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.003 seconds 9% STDEV| 0.004 seconds 11% STDEV|

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
| 0.306 seconds 3% STDEV | 0.475 seconds 5% STDEV|

Shuffle 1,000,000 Int objects with default implementation passing [Int]

| ObjectiveCUtils| SwiftUtils|
|---|---|
| Same as above | 0.081 seconds 4% STDEV|

Shuffle 1,000,000 Int objects with default implementation passing [T]

| ObjectiveCUtils| SwiftUtils|
|---|---|
| Same as above | 13.256 seconds 11% STDEV|

Shuffle 1,000,000 String objects with default implementation passing [String]

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 1.130 seconds 6% STDEV | 0.321 seconds 2% STDEV|

Empty loop 1,000,000 String objects in [Int]

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.111 seconds 3% STDEV | 0.001 seconds 5% STDEV|

Empty implementation no parameters

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.000 seconds | 0.000 seconds|
