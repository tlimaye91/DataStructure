//
//  MiddleOfLinklist.swift
//  DataStructures
//
//  Created by Tushar Limaye on 09/10/19.
//  Copyright © 2019 Tushar Limaye. All rights reserved.
//

import Foundation

// Get middle of linkedlist
extension LinkedList{
    func getMiddleOfLinkedList(){

        var fastpointer = head
        var slowpointer = head
        while fastpointer != nil && fastpointer?.next != nil {
            fastpointer = fastpointer?.next?.next
            slowpointer = slowpointer?.next
        }
        
        print(slowpointer!.value)
    }
}
