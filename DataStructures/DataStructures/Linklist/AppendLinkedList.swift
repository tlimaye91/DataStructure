//
//  AppendLinkedList.swift
//  DataStructures
//
//  Created by Tushar Limaye on 09/10/19.
//  Copyright © 2019 Tushar Limaye. All rights reserved.
//

import Foundation

// Append values in linkedList at first and last
extension LinkedList{
    // O(1)
    public func appendAtLast(value:T){
        let nodeToBeAdded = Node(value: value)
        
        if head == nil && tail == nil{
            head = nodeToBeAdded
            tail = nodeToBeAdded
            return
        }
        tail?.next = nodeToBeAdded
        tail = nodeToBeAdded
        
    }
    // O(1)
    public func append(value:T){
        let nodeToBeAdded = Node(value: value)
        
        if head == nil && tail == nil{
            head = nodeToBeAdded
            tail = nodeToBeAdded
            return
        }
        
        let tempHead = head
        head = nodeToBeAdded
        head?.next = tempHead
        
    }
}
