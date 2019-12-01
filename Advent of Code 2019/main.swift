//
//  main.swift
//  Advent of Code 2019
//
//  Created by Jesse Stolwijk on 30/11/2019.
//  Copyright © 2019 Jesse Stolwijk. All rights reserved.
//

import Foundation

extension String {
    func lines() -> [String.SubSequence] {
        return self.split(separator: "\n")
    }
}

func measureMillis(codeBlock: ()->()) -> Double {
    let startTime = CFAbsoluteTimeGetCurrent()
    
    codeBlock()
    
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    return Double(timeElapsed)
}

    
print("Advent of Code 2019")

let duration = measureMillis {
    day01()
}
    
print("Execution took \(duration) ms")

