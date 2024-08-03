//
//  FindAElementInSortedArray.swift
//  Data Structure & Algorithm Using TDDTests
//
//  Created by Karthik K Manoj on 22/07/24.
//

import XCTest

// Time complexity here is O(logn). This is called divde and Conquer approach
func findElement(_ element: Int, in array: [Int]) -> Bool {
    var range = 0..<array.count
     
    while range.startIndex < range.endIndex {
        let midPoint = range.startIndex + (range.endIndex - range.startIndex) / 2
        let middleElement = array[midPoint]
        
        if middleElement == element {
            return true
        } else if element < middleElement {
            range = range.startIndex..<midPoint
        } else {
            range = (midPoint+1)..<range.endIndex
        }
    }
    
    return false
}

final class FindAElementInSortedArray: XCTestCase {
    func test_findElement_onEmptyList_deliversFalse() {
        let output = findElement(1, in: [])
        XCTAssertFalse(output)
    }
    
    func test_findElement_inNonEmptySortedList_deliversTrue_whenElementIsPresent() {
        let output = findElement(1, in: [1])
        XCTAssertTrue(output)
    }
    
    func test_findElement_inNonEmptySortedList_deliversFalse_whenElementIsAbsent() {
        let output = findElement(1, in: [2,8,10,45,90])
        XCTAssertFalse(output)
    }
    
    func test_findElement_inNonEmptySortedList_deliversFalse_whenElementIsPresent_atSecondLastPosition() {
        let output = findElement(45, in: [2,8,10,45,90])
        XCTAssertTrue(output)
    }
}
