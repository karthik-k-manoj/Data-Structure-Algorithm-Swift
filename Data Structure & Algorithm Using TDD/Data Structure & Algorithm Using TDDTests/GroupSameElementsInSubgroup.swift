//
//  GroupSameElementsInSubgroup.swift
//  Data Structure & Algorithm Using TDDTests
//
//  Created by Karthik K Manoj on 23/07/24.
//

import XCTest

func groupElements(_ elements: [Int]) -> [[Int]] {
    guard !elements.isEmpty else { return [] }
    
    var currentGroup = [Int]()
    currentGroup.append(elements[0])
    
    var groups = [[Int]]()
    
    for element in elements.dropFirst() {
        if currentGroup[currentGroup.startIndex] == element {
            currentGroup.append(element)
        } else {
            groups.append(currentGroup)
            currentGroup = [element]
        }
    }

    groups.append(currentGroup)
    
    return groups
}


final class GroupSameElementsInSubgroup: XCTestCase {
    func test_groupElements_deliversEmptyGroup_onEmptyList() {
        XCTAssertEqual(groupElements([]), [])
    }
    
    func test_groupElements_deliversSingleGroup_onSingleElementList() {
        XCTAssertEqual(groupElements([1]), [[1]])
    }
    
    func test_groupElements_deliversTwoGroups_onTwoElementsList() {
        XCTAssertEqual(groupElements([1,2]), [[1], [2]])
    }
}
