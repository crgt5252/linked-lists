//
//  LinkedList.swift
//  LinkedLists
//
//  Created by Christopher Taylor on 8/3/19.
//  Copyright © 2019 Christopher Taylor. All rights reserved.
//

import UIKit

class LinkedList {

    static let sampleWords: [String] = ["apple", "bananas", "cabbage", "dogfood", "elephants", "foxes", "geese", "hunters", "indigo", "jackal", "kennel", "listen", "moon", "night", "open", "park", "quiz", "random", "start", "ten", "under", "violet", "water", "xylophone", "yellow", "zebra"]
    
    class func generateListFromWords(_ words: [String]) -> LinkedListNode<String>? {
        
        var prevNode: LinkedListNode<String>?
        var headNode: LinkedListNode<String>?
        var nodes: [LinkedListNode<String>] = []
        
        for word in words {
            let currNode = LinkedListNode(word)
            prevNode?.next = currNode
            nodes.append(currNode)
            prevNode = currNode
            if headNode == nil { headNode = currNode }
        }
        return headNode
    }
    
    class func printList(_ node: LinkedListNode<String>) {
        var currNode: LinkedListNode<String>? = node
        while currNode != nil {
            print(currNode!.value)
            currNode = currNode!.next
        }
    }
    
    class func reverseList(startingFrom headOfList: LinkedListNode<String>) -> LinkedListNode<String> {
        
        var prevNode: LinkedListNode<String>?
        var nextNode: LinkedListNode<String>?
        var currNode: LinkedListNode<String>? = headOfList

        while currNode != nil {
            nextNode = currNode?.next
            currNode?.next = prevNode
            prevNode = currNode
            currNode = nextNode
        }
        
        return prevNode ?? headOfList
    }
    
    class func findKthFromEndOfList(startingFrom headOfList: LinkedListNode<String>, k: UInt) -> LinkedListNode<String>? {
        
        var currNode = headOfList
        
        // position a node to look ahead as we progress through the list
        var lookAheadNode: LinkedListNode<String>?
        
        for _ in 1..<k {
            if let next = currNode.next {
                lookAheadNode = next
                currNode = next
            } else {
                //invalid input
                return nil
            }
        }
        
        // reset currNode now that we have positioned our lookahead node
        currNode = headOfList
        
        //when the lookahead is at the tail, our current node is K steps from the end of the list
        while lookAheadNode!.next != nil {
            lookAheadNode = lookAheadNode?.next
            currNode = currNode.next!
        }
        
        return currNode
    }
}
