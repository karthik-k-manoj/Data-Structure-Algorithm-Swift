//
//  GroupConsecutiveElements.swift
//  Data Structure & Algorithm Using TDDTests
//
//  Created by Karthik K Manoj on 23/07/24.
//

import XCTest

func groupElements(_ elements: [Int]) -> [[Int]] {
    // If elements is empty then you return
    guard !elements.isEmpty else { return [] }
    
    // First group made of first element
    var currentGroup = [Int]()
    currentGroup.append(elements[0])
    
    // Main group hold subgroups
    var groups = [[Int]]()
    
    for element in elements.dropFirst() {
        if currentGroup[currentGroup.startIndex] == element {
            currentGroup.append(element)
        } else {
            groups.append(currentGroup)
            currentGroup = [element]
        }
    }

    // If there is single element or
    // If last element is different or
    // if all elements are identical so does not move to else block
    groups.append(currentGroup)
    
    return groups
}


final class GroupConsecutiveElements: XCTestCase {
    func test_groupElements_deliversEmptyGroup_onEmptyList() {
        XCTAssertEqual(groupElements([]), [])
    }
    
    func test_groupElements_deliversSingleGroup_onSingleElementList() {
        XCTAssertEqual(groupElements([1]), [[1]])
    }
    
    func test_groupElements_deliversTwoGroups_onTwoElementsList() {
        XCTAssertEqual(groupElements([1,2]), [[1], [2]])
    }
    
    func test_groupElements_deliversSingleGroup_onTwoIdenticalElementsList() {
        XCTAssertEqual(groupElements([1,1]), [[1,1]])
    }
    
    func test_groupElements_deliversMultipleGroups_onMultipleIdenticalElementsList() {
        XCTAssertEqual(groupElements([1,1,2,2,3,4,5,5]), [[1,1], [2,2], [3], [4], [5,5]])
    }
}
