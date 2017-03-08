
import XCTest

class QuickSortTests: XCTestCase {
    func testEmpty() {
        let arr = [Int]()
        let sortedArr = quicksort(arr)
        XCTAssertEqual(sortedArr.count, 0)
    }
    
    func testOneElement() {
        let arr = [123]
        let sorted = quicksort(arr)
        XCTAssertEqual(sorted, [123])
    }
    
    func testManyElements() {
        let arr = [1, 2, 3]
        let sorted = quicksort(arr)
        XCTAssertEqual(sorted, [1, 2, 3])
    }
    
    func testUnorderedElements() {
        let arr = [3, 1, 2, 5]
        let sorted = quicksort(arr)
        XCTAssertEqual(sorted, [1, 2, 3, 5])
    }
    
    func testortingArrayTwoEqualElements() {
        let arr = [123, 123]
        let sorted = quicksort(arr)
        XCTAssertEqual(sorted, [123, 123])
    }
}
