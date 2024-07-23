//
//  GroupConsecutiveElements.swift
//  Data Structure & Algorithm Using TDDTests
//
//  Created by Karthik K Manoj on 23/07/24.
//

import XCTest

extension Array where Element: Equatable {
    func groupConsecutiveElements() -> [[Element]] {
        // First group made of first element
        var currentGroup = [Element]()
        currentGroup.append(self[0])
        
        // Main group hold subgroups
        var groups = [[Element]]()
        
        for element in dropFirst() {
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
}

final class GroupConsecutiveElements: XCTestCase {
    func test_deliversSingleGroup_onSingleElement() {
        XCTAssertEqual([1].groupConsecutiveElements(), [[1]])
    }
    
    func test_deliversTwoGroups_onTwoElements() {
        XCTAssertEqual([1,2].groupConsecutiveElements(), [[1], [2]])
    }
    
    func test_deliversSingleGroup_onTwoIdenticalElements() {
        XCTAssertEqual([1,1].groupConsecutiveElements(), [[1,1]])
    }
    
    func test_deliversMultipleGroups_onMultipleIdenticalElements() {
        XCTAssertEqual([1,1,2,2,3,4,5,5].groupConsecutiveElements(), [[1,1], [2,2], [3], [4], [5,5]])
    }
}
