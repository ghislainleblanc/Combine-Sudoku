//
//  SudokuGenerator.swift
//  Sudoku
//
//  Created by Ghislain Leblanc on 2020-12-27.
//

import Foundation

struct SudokuGenerator {
    static func generate() -> Array<Array<Int>> {
        var grid = Array<Array<Int>>()

        for _ in 0...8 {
            var row = Array<Int>()
            for _ in 0...8 {
                row.append(0)
            }
            grid.append(row)
        }
        
        return grid
    }
}
