//
//  FindAElementInSortedArray.swift
//  Data Structure & Algorithm Using TDDTests
//
//  Created by Karthik K Manoj on 22/07/24.
//

import XCTest

func findElement(_ element: Int, in array: [Int]) -> Bool {
    for item in array {
        if element == item {
            return true
        }
    }
    
    return false
}

final class FindAElementInSortedArray: XCTestCase {
    func test_findElement_onEmptyList_deliversFalse() {
        let output = findElement(1, in: [])
        XCTAssertFalse(output)
    }
    
    func test_findElement_inNonEmptyList_deliversTrue_whenElementIsPresent() {
        let output = findElement(1, in: [1])
        XCTAssertTrue(output)
    }
}
