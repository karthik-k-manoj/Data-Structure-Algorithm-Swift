//
//  SortArrayWithO1SpaceComplexity.swift
//  Data Structure & Algorithm Using TDDTests
//
//  Created by Karthik K Manoj on 25/07/24.
//

import XCTest

func sortWithO1Space(_ array: [Int]) -> String {
    guard !array.isEmpty else { return "" }
    
    var result = ""
    // we should be using O(1) space complexity
    
    // Start with the minimum integer possible
    var min = Int.min
    var currentCount = 0
    
    // loop through this array until all elements are printed
    while currentCount < array.count {
        // the maximum element of the array
        var currentValue = array.max()!
        
        // loop through the array until we find the lowest element
        // in the array. This is done by finding the lowest element closest
        // to min element and maximum element
        for value in array {
            if value < currentValue && value > min {
                currentValue = value
            }
        }
        
        // loop through the array checking for the lowest element and print
        // also reduce elementsC
        for value in array {
            if value == currentValue {
                result.append("\(value)")
                result.append(" ")
                currentCount += 1
            }
        }
        
        // the lowest element will be the min value so that
        // we can find the next lowest number greater than this min value
        min = currentValue
    }
    
    return result.trimmingCharacters(in: .whitespaces)
}

final class SortArrayWithO1SpaceComplexity: XCTestCase {
    func test_sort_deliversEmpty_onEmptyArray() {
        XCTAssertEqual(sortWithO1Space([]), "")
    }

    func test_sort_deliversSingleItem_onSingleElementArray() {
        XCTAssertEqual(sortWithO1Space([1]), "1")
    }

    func test_sort_deliversSorted2Items_onTwoElementsSortedArray() {
        XCTAssertEqual(sortWithO1Space([1, 2]), "1 2")
    }

    func test_sort_deliversSorted2Items_onTwoElementsUnsortedArray() {
        XCTAssertEqual(sortWithO1Space([2, 1]), "1 2")
    }
    
    func test_sort_deliversSortedMultipleItems_onMultipleElementUnsortedArray() {
        XCTAssertEqual(sortWithO1Space([9,3,1,6,0]), "0 1 3 6 9")
    }
}
