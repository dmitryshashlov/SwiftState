//
//  StateTypeComparator
//  SwiftState
//
//  Created by Dmitry Shashlov on 2016-09-20.
//  Copyright © 2016 Dmitry Shashlov. All rights reserved.
//

protocol StateTypeComparable {
    associatedtype SType: StateType
    static func modestComparator() -> (SType, SType) -> Bool
    static func greedyComparator() -> (SType, SType) -> Bool
}

func ==<S: StateType where S: StateTypeComparable, S.SType == S>(left: S, right: S) -> Bool {
    return S.modestComparator()(left, right)
}

func ===<S: StateType where S: StateTypeComparable, S.SType == S>(left: S, right: S) -> Bool {
    return S.greedyComparator()(left, right)
}