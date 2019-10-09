//
//  SearchLinklist.swift
//  DataStructures
//
//  Created by Tushar Limaye on 09/10/19.
//  Copyright © 2019 Tushar Limaye. All rights reserved.
//

import Foundation

// Search and element in linkedlist

extension LinkedList{
    func searchValueInLinkedList(value:T) -> Node<T>?{
        var tempHead = head
        while tempHead != nil {
            if tempHead?.value == value{
                return tempHead
            }
            tempHead = tempHead?.next
        }
        return nil
    }
}
