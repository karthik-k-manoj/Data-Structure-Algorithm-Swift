//
//  SortArrayWithO1SpaceComplexity.swift
//  Data Structure & Algorithm Using TDDTests
//
//  Created by Karthik K Manoj on 25/07/24.
//

import XCTest

func sortWithO1Space(_ array: [Int]) -> [Int] {
    guard !array.isEmpty else { return [] }

    return array.sorted()
}

final class SortArrayWithO1SpaceComplexity: XCTestCase {
    func test_sort_deliversEmptyArray_onEmptyArray() {
        let output = sortWithO1Space([])
        XCTAssertEqual(output, [])
    }
    
    func test_sort_deliversSingleElementArray_onSingleElementArray() {
        let output = sortWithO1Space([1])
        XCTAssertEqual(output, [1])
    }
    
    func test_sort_deliversSorted2ElementsArray_onTwoElementsSortedArray() {
        let output = sortWithO1Space([1, 2])
        XCTAssertEqual(output, [1, 2])
    }
    
    // refactor implementation backed up by test is a powerful feature which reduces the risk and fear of change.
    // we already have passing test. Now you are free to change the implementation while tests giving us the confidence
    // system is working as expected
    func test_sort_deliversSorted2ElementsArray_onTwoElementsUnsortedArray() {
        let output = sortWithO1Space([2, 1])
        XCTAssertEqual(output, [1, 2])
    }
}
