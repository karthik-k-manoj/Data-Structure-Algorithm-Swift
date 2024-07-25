//
//  SortArrayWithO1SpaceComplexity.swift
//  Data Structure & Algorithm Using TDDTests
//
//  Created by Karthik K Manoj on 25/07/24.
//

import XCTest

func sortWithO1Space(_ array: [Int]) -> [Int] {
    []
}

final class SortArrayWithO1SpaceComplexity: XCTestCase {
    func test_sort_deliversEmptyArray_onEmptyArray() {
        let output = sortWithO1Space([])
        XCTAssertEqual(output, [])
    }
}
