//
//  IsAPalindromeLinkedList.swift
//  DataStructures
//
//  Created by Tushar Limaye on 10/10/19.
//  Copyright © 2019 Tushar Limaye. All rights reserved.
//

import Foundation

extension LinkedList{
    
    // O(n)
    func isLinkedListPalindrome() -> Bool{
        
        var arr:[Int] = []
        var tempHead = head

        while tempHead != nil{
            arr.append(tempHead!.value as! Int)
            tempHead = tempHead?.next
        }
        while head != nil {
            let checkNode = arr.removeLast()
            if head!.value as! Int != checkNode{
                return false
            }
            head = head!.next
        }
        
        return true
        
    }
    
    
}
