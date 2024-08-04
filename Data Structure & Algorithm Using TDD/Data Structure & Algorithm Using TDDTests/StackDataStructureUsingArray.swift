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
    func test_stack_isEmpty() {
        let stack = Stack(elements: [])
        XCTAssertTrue(stack.isEmpty)
    }
    
}

