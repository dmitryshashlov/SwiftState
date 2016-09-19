//
//  StateTypeComparator
//  SwiftState
//
//  Created by Dmitry Shashlov on 2016-09-20.
//  Copyright © 2016 Dmitry Shashlov. All rights reserved.
//

public struct StateTypeComparator<S: StateType> {
    public let dummyState: S
    public let comparator: (S, S) -> Bool
}
