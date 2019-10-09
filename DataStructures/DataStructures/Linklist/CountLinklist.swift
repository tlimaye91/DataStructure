//
//  CountLinklist.swift
//  DataStructures
//
//  Created by Tushar Limaye on 09/10/19.
//  Copyright © 2019 Tushar Limaye. All rights reserved.
//

import Foundation
// Get count of linkedlist iterative and recursive
extension LinkedList{
    
    func findLinkedListLength() -> Int{
        var tempHead = head
        var i = 0
        while tempHead != nil {
            i = i + 1
            tempHead = tempHead?.next
        }
        return i
    }
    
    func findLinkedListLengthRecursive(node:Node<T>?) -> Int{
        if node == nil{
            return 0
        }
        return 1 + findLinkedListLengthRecursive(node: node?.next)
        
    }
}
