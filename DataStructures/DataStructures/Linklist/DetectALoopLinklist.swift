//
//  DetectALoopLinklist.swift
//  DataStructures
//
//  Created by Tushar Limaye on 09/10/19.
//  Copyright © 2019 Tushar Limaye. All rights reserved.
//

import Foundation

// Check a loop and check the count of the loop in linkedin
extension LinkedList{
    func detectALoopInLinkedList(){
        // creating a loop
        head?.next?.next?.next?.next = head
        var fastpointer = head
        var slowpointer = head
        while fastpointer != nil && fastpointer?.next != nil {
            fastpointer = fastpointer?.next?.next
            slowpointer = slowpointer?.next
            if slowpointer == fastpointer{
                print(countLoop(node: slowpointer))
                print("true")
                break
            }
        }
    }
    
    func countLoop(node:Node<T>?) -> Int{
        var tempNode = node
        var count = 0
        while tempNode?.next != node {
            count = count + 1
            tempNode = tempNode?.next
        }
        return count
    }
}
