//
//  FindAElementInSortedArray.swift
//  Data Structure & Algorithm Using TDDTests
//
//  Created by Karthik K Manoj on 22/07/24.
//

import XCTest

func findElement(_ element: Int, in array: [Int]) -> Bool {
    return false
}

final class FindAElementInSortedArray: XCTestCase {
    func test_findElement_onEmptyInput_deliversFalse() {
        let output = findElement(1, in: [])
        XCTAssertFalse(output)
    }
}
