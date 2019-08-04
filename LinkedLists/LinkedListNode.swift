//
//  LinkedListNode.swift
//  LinkedLists
//
//  Created by Christopher Taylor on 8/3/19.
//  Copyright © 2019 Christopher Taylor. All rights reserved.
//

import UIKit

class LinkedListNode<Value: Equatable> {
    
    var value: Value
    var next: LinkedListNode?
    
    init(_ value: Value) {
        self.value = value
    }
}
