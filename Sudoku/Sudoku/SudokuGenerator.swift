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
        var grid = Matrix()

        for _ in 0...8 {
            var row = Array<Int>()
            for _ in 0...8 {
                row.append(0)
            }
            grid.append(row)
        }
        
        return grid
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
}
