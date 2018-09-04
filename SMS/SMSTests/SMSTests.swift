//
//  SMSTests.swift
//  SMSTests
//
//  Created by Susan Johnson on 9/3/18.
//  Copyright © 2018 Out There Software. All rights reserved.
//

import XCTest
@testable import SMS

class SMSTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExampleOne() {
        var str = "one two one two one two"
        XCTAssert(SMS.solution(&str, 1) == -1)
        XCTAssert(SMS.solution(&str, 2) == -1)
        XCTAssert(SMS.solution(&str, 3) == 6)
        XCTAssert(SMS.solution(&str, 4) == 6)
        XCTAssert(SMS.solution(&str, 5) == 6)
        XCTAssert(SMS.solution(&str, 7) == 3)
        XCTAssert(SMS.solution(&str, 10) == 3)
        XCTAssert(SMS.solution(&str, 11) == 2)
        XCTAssert(SMS.solution(&str, 22) == 2)
        XCTAssert(SMS.solution(&str, 23) == 1)
        XCTAssert(SMS.solution(&str, 24) == 1)
    }
    
    func testExampleTwo() {
        var str = "a b c d e"
        XCTAssert(SMS.solution(&str, 1) == 5)
        XCTAssert(SMS.solution(&str, 2) == 5)
        XCTAssert(SMS.solution(&str, 3) == 3)
        XCTAssert(SMS.solution(&str, 4) == 3)
        XCTAssert(SMS.solution(&str, 5) == 2)
        XCTAssert(SMS.solution(&str, 8) == 2)
        XCTAssert(SMS.solution(&str, 9) == 1)
        XCTAssert(SMS.solution(&str, 10) == 1)
    }
    
    func testExampleThree() {
        var str = "unexplained vocabulary prowess"
        XCTAssert(SMS.solution(&str, 1) == -1)
        XCTAssert(SMS.solution(&str, 2) == -1)
        XCTAssert(SMS.solution(&str, 10) == -1)
        XCTAssert(SMS.solution(&str, 11) == 3)
        XCTAssert(SMS.solution(&str, 17) == 3)
        XCTAssert(SMS.solution(&str, 18) == 2)
        XCTAssert(SMS.solution(&str, 23) == 2)
        XCTAssert(SMS.solution(&str, 30) == 1)
        XCTAssert(SMS.solution(&str, 31) == 1)
    }
    
    func testExampleFour() {
        var str = "You have a long piece of text, and you want to send it to your friend as a series of SMS messages. Your text consists of English letters (uppercase and lowercase) and spaces. The text doesn't contain any leading spaces at the beginning or trailing spaces at the end. There are no two consecutive spaces in the text. One proper SMS can contain at most K characters. If the text is longer, it needs to be split into parts. Each part should be sent in a separate message that fulfills the maximum length requirement. Text may not be split within words. The order of the words and the messages can't change, so that we can later concatenate the resulting messages to retrieve the original text. Spaces at the start and end of all messages are removed, and thus are not accounted for in the overall message length."
        XCTAssert(SMS.solution(&str, 1) == -1)
        XCTAssert(SMS.solution(&str, 2) == -1)
        XCTAssert(SMS.solution(&str, 10) == -1)
        XCTAssert(SMS.solution(&str, 11) == -1)
        XCTAssert(SMS.solution(&str, 12) == 80)
        XCTAssert(SMS.solution(&str, 50) == 17)
        XCTAssert(SMS.solution(&str, 100) == 9)
        XCTAssert(SMS.solution(&str, 200) == 5)
        XCTAssert(SMS.solution(&str, 500) == 2)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
