//
//  ViewController.swift
//  Sudoku
//
//  Created by Ghislain Leblanc on 2020-12-27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let matrix = SudokuGenerator.generate()
    }


}

