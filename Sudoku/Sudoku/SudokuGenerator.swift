//
//  SudokuGenerator.swift
//  Sudoku
//
//  Created by Ghislain Leblanc on 2020-12-27.
//

import Foundation

typealias Matrix = Array<Array<Int>>

struct SudokuGenerator {
    static func generate() -> Matrix {
        var matrix = Matrix()

        repeat {
            matrix = Matrix()
            for _ in 0...8 {
                var row = Array<Int>()
                for _ in 0...8 {
                    row.append(Int.random(in: 1..<9))
                }
                matrix.append(row)
            }
        } while SudokuGenerator.isValid(matrix: matrix) == false

        return matrix
    }

    private static func isValid(matrix: Matrix) -> Bool {
        return testGridSize(matrix: matrix) && testSquares(matrix: matrix) && testRowsAndColumns(matrix: matrix)
    }

    static func generateSample() -> Matrix {
        return [
            [1, 2, 3,/**/ 4, 5, 6,/**/ 7, 8, 9],
            [4, 5, 6,/**/ 7, 8, 9,/**/ 1, 2, 3],
            [7, 8, 9,/**/ 1, 2, 3,/**/ 4, 5, 6],
            /*--------------------------------*/
            [2, 3, 4,/**/ 5, 6, 7,/**/ 8, 9, 1],
            [5, 6, 7,/**/ 8, 9, 1,/**/ 2, 3, 4],
            [8, 9, 1,/**/ 2, 3, 4,/**/ 5, 6, 7],
            /*--------------------------------*/
            [3, 4, 5,/**/ 6, 7, 8,/**/ 9, 1, 2],
            [6, 7, 8,/**/ 9, 1, 2,/**/ 3, 4, 5],
            [9, 1, 2,/**/ 3, 4, 5,/**/ 6, 7, 8]
        ]
    }

    private static func testGridSize(matrix: Matrix) -> Bool {
        for i in 0...matrix.count - 1 {
            if matrix[i].count != 9 {
                return false
            }
        }
        return true
    }

    private static func testSquares(matrix: Matrix) -> Bool {
        for i in stride(from: 0, through: 6, by: 3) {
            for j in stride(from: 0, through: 6, by: 3) {
                var digits = Set<Int>()

                for row in 0...2 {
                    for col in 0...2 {
                        digits.insert(matrix[i + col][j + row])
                    }
                }

                if digits.count != 9 {
                    return false
                }
            }
        }

        return true
    }

    private static func testRowsAndColumns(matrix: Matrix) -> Bool {
        for i in 0...8 {
            var rowDigits = Set<Int>()
            var columnDigits = Set<Int>()
            for j in 0...8 {
                rowDigits.insert(matrix[i][j])
                columnDigits.insert(matrix[j][i])
            }
            if rowDigits.count != 9 || columnDigits.count != 9 {
                return false
            }
        }
        return true
    }
}
