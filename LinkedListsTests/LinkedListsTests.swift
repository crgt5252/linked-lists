//
//  LinkedListsTests.swift
//  LinkedListsTests
//
//  Created by Christopher Taylor on 8/3/19.
//  Copyright © 2019 Christopher Taylor. All rights reserved.
//

import XCTest
@testable import LinkedLists

class LinkedListsTests: XCTestCase {

    let testWords = ["apple", "bat", "cat"]

    override func setUp() { }

    override func tearDown() { }

    func testItGenerates() {
        
        let headNode = LinkedList.generateListFromWords(self.testWords)
        
        XCTAssert(headNode?.value == "apple")
        XCTAssert(headNode?.next?.value == "bat")
        XCTAssert(headNode?.next?.next?.value == "cat")
    }

  
    func testItReverses() {
        
        let headNode = LinkedList.generateListFromWords(self.testWords)
        let revNode = LinkedList.reverseList(startingFrom: headNode!)
        
        XCTAssert(revNode.value == "cat")
        XCTAssert(revNode.next?.value == "bat")
        XCTAssert(revNode.next?.next?.value == "apple")
    }

}
