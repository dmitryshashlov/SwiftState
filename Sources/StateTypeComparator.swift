//
//  StateTypeComparator
//  SwiftState
//
//  Created by Dmitry Shashlov on 2016-09-20.
//  Copyright © 2016 Dmitry Shashlov. All rights reserved.
//

struct StateTypeComparator<S: StateType> {
    let dummyState: S
    let comparator: (S, S) -> Bool
}