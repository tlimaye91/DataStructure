//
//  PrintLinkedlist.swift
//  DataStructures
//
//  Created by Tushar Limaye on 09/10/19.
//  Copyright © 2019 Tushar Limaye. All rights reserved.
//

import Foundation

// Print linkedlist
extension LinkedList{
    // O(n)
    public func printLinkList(){
        var tempHead = head
        while tempHead != nil {
            print(tempHead!.value)
            tempHead = tempHead?.next
        }
    }
}
