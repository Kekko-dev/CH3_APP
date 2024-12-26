//
//  Chart_Data.swift
//  LumiCode
//
//  Created by Francesco Silvestro on 26/12/24.
//

import Foundation

struct SalesData: Identifiable {
    let id = UUID()
    let day: String
    let sales: Double
}

let sampleData = [
    SalesData(day: "Monday", sales: 150),
    SalesData(day: "Tuesday", sales: 200),
    SalesData(day: "Wednesday", sales: 170),
    SalesData(day: "Thursday", sales: 220),
    SalesData(day: "Friday", sales: 190)
]
