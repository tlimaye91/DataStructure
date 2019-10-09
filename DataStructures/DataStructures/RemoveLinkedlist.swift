//
//  RemoveLinkedlist.swift
//  DataStructures
//
//  Created by Tushar Limaye on 09/10/19.
//  Copyright © 2019 Tushar Limaye. All rights reserved.
//

import Foundation


// Remove linkedList objects by index, value and all
extension LinkedList{
    public func removeAt(index: Int){
        
        if head == nil{
            return
        }
        
        if index == 0{
            let tempHead = head
            head = tempHead!.next
            return
        }
        var tempHead = head
        var i = 0
        while tempHead != nil{
            if i == index-1{
                let previosNode = tempHead
                let nextToNode = previosNode?.next?.next
                previosNode?.next = nextToNode
                return
            }
            i = i + 1
            tempHead = tempHead?.next
        }
        
        
    }
    public func removeAll(){
        head = nil
        tail = nil
    }
    public func remove(value:T){
        if head == nil{
            return
        }
        
        if head!.value == value{
            let tempHead = head
            let nextHead = tempHead?.next
            head = nextHead
        }
        
        var tempHead = head
        var prevHead:Node<T>?
        
        while (tempHead != nil){
            
            if tempHead!.value == value{
                prevHead?.next = tempHead?.next
                return
            }
            prevHead = tempHead
            tempHead = tempHead?.next
        }

    }
}
