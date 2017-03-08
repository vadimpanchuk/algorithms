import XCTest

class TreeTests: XCTestCase {
    func testTree() {
        let root = TreeNode<String>(value: "root")
        let node1 = TreeNode<String>(value: "node1")
        let node2 = TreeNode<String>(value: "node2")
        let leaf1 = TreeNode<String>(value: "leaf1")
        let leaf2 = TreeNode<String>(value: "leaf2")
        let leaf3 = TreeNode<String>(value: "leaf3")
        let leaf4 = TreeNode<String>(value: "leaf4")
        let leaf5 = TreeNode<String>(value: "leaf5")
        
        root.addChild(node1)
        root.addChild(node2)
        
        node1.addChild(leaf1)
        node1.addChild(leaf2)
        
        node2.addChild(leaf3)
        node2.addChild(leaf4)
        node2.addChild(leaf5)
        
        XCTAssertNil(root.parent)
        XCTAssertEqual(root.value, "root")
        XCTAssertEqual(node1.parent!.value, "root")
        XCTAssertEqual(node2.parent!.value, "root")
        XCTAssertEqual(leaf1.parent!.value, "node1")
        XCTAssertEqual(leaf2.parent!.value, "node1")
        XCTAssertEqual(leaf3.parent!.value, "node2")
        XCTAssertEqual(leaf4.parent!.value, "node2")
        XCTAssertEqual(leaf5.parent!.value, "node2")
        XCTAssertNil(leaf5.parent!.parent!.parent)
    }
}
