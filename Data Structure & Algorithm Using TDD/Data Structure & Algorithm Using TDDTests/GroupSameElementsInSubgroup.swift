//
//  GroupSameElementsInSubgroup.swift
//  Data Structure & Algorithm Using TDDTests
//
//  Created by Karthik K Manoj on 23/07/24.
//

import XCTest

func groupElements(_ elements: [Int]) -> [[Int]] {
    []
}


final class GroupSameElementsInSubgroup: XCTestCase {
    func test_groupElements_deliversEmptyList_onEmptyInputList() {
        let output = groupElements([])
        
        XCTAssertEqual(output, [])
    }
}
