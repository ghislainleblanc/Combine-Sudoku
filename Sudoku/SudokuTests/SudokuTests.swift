//
//  SudokuTests.swift
//  SudokuTests
//
//  Created by Ghislain Leblanc on 2020-12-27.
//

import XCTest
@testable import Sudoku

class SudokuTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testGridSize() {
        let grid = SudokuGenerator.generateSample()
        XCTAssert(grid.count == 9)

        grid.forEach { (array) in
            XCTAssert(array.count == 9)
        }
    }

    func testSquares() {
        let grid = SudokuGenerator.generateSample()

        [0, 3, 6].forEach { (row) in
            [0, 3, 6].forEach { (col) in
                var digits = Set<Int>()

                for i in 0...2 {
                    for j in 0...2 {
                        digits.insert(grid[i + col][j + row])
                    }
                }

                XCTAssert(digits.count == 9)
            }
        }
    }

    func testRowsAndColumns() {
        let grid = SudokuGenerator.generateSample()
        for i in 0...8 {
            var rowDigits = Set<Int>()
            var columnDigits = Set<Int>()
            for j in 0...8 {
                rowDigits.insert(grid[i][j])
                columnDigits.insert(grid[j][i])
            }
            XCTAssert(rowDigits.count == 9)
            XCTAssert(columnDigits.count == 9)
        }
    }
}
