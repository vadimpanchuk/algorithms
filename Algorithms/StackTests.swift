import XCTest

class StackTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testOneElement() {
        var stack = Stack<Int>()
        
        stack.push(1000)
        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.count, 1)
        XCTAssertEqual(stack.top, 1000)
        
        let result = stack.pop()
        XCTAssertEqual(result, 1000)
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.count, 0)
        XCTAssertEqual(stack.top, nil)
        XCTAssertNil(stack.pop())
        
    }
    
    func testEmptyStack() {
        var stack = Stack<Int>()
        
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.count, 0)
        XCTAssertEqual(stack.top, nil)
        XCTAssertNil(stack.pop())
    }
    
    func testManyElements() {
        var stack = Stack<String>()
        stack.push("Apple")
        stack.push("Pear")
        
        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.count, 2)
        XCTAssertEqual(stack.top, "Pear")
        
        stack.push("Grape")
        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.count, 3)
        XCTAssertEqual(stack.top, "Grape")
        
        var result = stack.pop()
        XCTAssertEqual(result, "Grape")
        result = stack.pop()
        XCTAssertEqual(result, "Pear")
        result = stack.pop()
        XCTAssertEqual(result, "Apple")
        XCTAssertNil(stack.pop())
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
