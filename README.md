###NSMutableArray Unit Test

**Shuffle 100,000 NSNumber objects in NSMutableArray**
-O

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.016135 s| 0.022997 s|


**Shuffle 1,000,000 NSNumber objects in NSMutableArray**
-O

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.193394 s| 0.263660 s|

**Shuffle 1,000,000 Int objects in [Int] with Swift Project default implementation of Int and use Swift View Controller as caller**
-O 

| ObjectiveCUtils| SwiftUtils|
|---|---|
| 0.370280981063843 s| 0.0822709798812866 s|

**Shuffle 100,000 NSNumber objects in NSMutableArray with conversion to [Int]**
-O
ObjectiveCUtils:	0.015689
SwiftUtils:		0.250969 with 0.00683802366256714 spent on iterating swift loop

**Shuffle 1,000,000 NSNumber objects in NSMutableArray with conversion to [Int]**
-O
ObjectiveCUtils:	0.229155
SwiftUtils:		2.270818 with 0.0797039866447449 spent on iterating swift loop

**Empty loop 1,000,000 objects with NSMutableArray**
-O
ObjectiveCUtils:	0.004
SwiftUtils:		0.003

**Empty implementation no parameters**
-O
ObjectiveCUtils:	0.000013
SwiftUtils:		0.000007

**Console log implementation no parameters**
-O
ObjectiveCUtils:	0.000689
SwiftUtils:		0.000143


###Swift Array Unit Test

**Shuffle 1,000,000 Int objects in [AnyObject] with default implementation**
-O
ObjectiveCUtils:	0.298 with conversion to NSMutableArray
SwiftUtils: 		0.417

**Shuffle 1,000,000 Int objects with default implementation passing [Int]**
-O
ObjectiveCUtils:	Same as above
SwiftUtils:		0.084

**Shuffle 1,000,000 Int objects with default implementation passing [T]**
-O
ObjectiveCUtils:	Same as above
SwiftUtils:		10.498

**Shuffle 1,000,000 String objects with default implementation passing [String]**
-O
ObjectiveCUtils:	1.193 with conversion to NSMutableArray
SwiftUtils:		0.361

**Empty loop 1,000,000 String objects in [Int]**
-O
ObjectiveCUtils:	0.115 with conversion to NSMutableArray
SwiftUtils:		0.001
This is a good point for questions regarding the validity of the shuffle algorithm

**Empty implementation no parameters**
-O
ObjectiveCUtils:	0.000
SwiftUtils:		0.000
Bug filed
