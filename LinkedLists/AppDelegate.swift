//
//  AppDelegate.swift
//  LinkedLists
//
//  Created by Christopher Taylor on 8/3/19.
//  Copyright © 2019 Christopher Taylor. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        playWithLinkedLists()
        return true
    }
    
    func playWithLinkedLists() {

        let words = LinkedList.sampleWords
        
        // generate a linked list to play with
        guard let headNode = LinkedList.generateListFromWords(words) else { return }

        // print
        print ("-- LinkedList: " )
        LinkedList.printList(headNode)
       
        //reverse it
        print ("-- Reversed:" )
        let revHeadNode = LinkedList.reverseList(startingFrom: headNode)
        LinkedList.printList(revHeadNode)
        

        //find kth node from end
        print ("-- Kth Node from end's value:" )
        if let kthNode = LinkedList.findKthFromEndOfList(startingFrom: revHeadNode, k: 3) {
            print(kthNode.value)
        } else {
            print("invalid input")
        }


    }

}

