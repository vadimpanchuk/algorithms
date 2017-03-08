//
//  MergeSortTests.swift
//  Algorithms
//
//  Created by vadim on 3/5/17.
//  Copyright © 2017 XaTa. All rights reserved.
//

import XCTest

class MergeSortTests: XCTestCase {
    func testEmpty() {
        let arr = [Int]()
        let sortedArr = mergeSort(arr)
        XCTAssertEqual(sortedArr.count, 0)
    }
    
    func testOneElement() {
        let arr = [123]
        let sorted = mergeSort(arr)
        XCTAssertEqual(sorted, [123])
    }
    
    func testManyElements() {
        let arr = [1, 2, 3]
        let sorted = mergeSort(arr)
        XCTAssertEqual(sorted, [1, 2, 3])
    }
    
    func testUnorderedElements() {
        let arr = [3, 1, 2, 5]
        let sorted = mergeSort(arr)
        XCTAssertEqual(sorted, [1, 2, 3, 5])
    }
    
    func testortingArrayTwoEqualElements() {
        let arr = [123, 123]
        let sorted = mergeSort(arr)
        XCTAssertEqual(sorted, [123, 123])
    }
}
