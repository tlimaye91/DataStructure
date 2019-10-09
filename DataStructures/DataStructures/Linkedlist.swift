//
//  Linkedlist.swift
//  DataStructures
//
//  Created by Tushar Limaye on 09/10/19.
//  Copyright © 2019 Tushar Limaye. All rights reserved.
//

import Foundation

public class Node<T>{
    var value:T
    var next:Node?
    init(value:T) {
        self.value = value
    }
}

extension Node:Equatable where T:Equatable{
    public static func == (lhs: Node<T>, rhs: Node<T>) -> Bool {
        return lhs.value == rhs.value
    }
}

public class LinkedList<T:Equatable> {
    public var head: Node<T>?
    public var tail: Node<T>?
}


