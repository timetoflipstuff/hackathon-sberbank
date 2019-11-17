//
//  SpendingsEnum.swift
//  StatisticsForSber
//
//  Created by Алексей ]Чанов on 16/11/2019.
//  Copyright © 2019 Алексей Чанов. All rights reserved.
//

import Foundation

public enum Spendings : String {
    
    case Food = "Food"
    case Relax = "Entertainment"
    case Transporting = "Transport"
    case Healthcare = "Healthcare"
    case MajorShoppinig = "Major shopping"
    case Other = "Other"
    
}

struct SpensingNumbers : Sequence, IteratorProtocol {
    
    var spensing : Spendings
    var sum : Int
    
    mutating func next() -> Int? {
        if sum == 0 {
            return nil
        } else {
            defer { sum -= 1 }
            return sum
        }
    }
}


