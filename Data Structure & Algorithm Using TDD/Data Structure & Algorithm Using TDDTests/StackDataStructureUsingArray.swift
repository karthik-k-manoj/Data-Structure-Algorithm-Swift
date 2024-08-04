//
//  StackDataStructureUsingArray.swift
//  Data Structure & Algorithm Using TDDTests
//
//  Created by Karthik K Manoj on 04/08/24.
//

import XCTest

struct Stack {
    var elements: [Int]
    
    var isEmpty: Bool {
        elements.isEmpty
    }
}

final class StackDataStructureUsingArray: XCTestCase {
    func test_stackWithEmptyList_isEmpty() {
        let stack = Stack(elements: [])
        XCTAssertTrue(stack.isEmpty)
    }
    
    func test_stackWithOneElement_deliversNonEmpty() {
        let stack = Stack(elements: [1])
        XCTAssertTrue(!stack.isEmpty)
    }
}

