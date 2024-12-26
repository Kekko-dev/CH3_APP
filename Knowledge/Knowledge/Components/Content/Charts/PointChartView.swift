//
//  PointChartView.swift
//  LumiCode
//
//  Created by Francesco Silvestro on 26/12/24.
//

import SwiftUI
import Charts

struct PointChartView: View {
    let data: [SalesData]

    var body: some View {
        Chart(data) { item in
            PointMark(
                x: .value("Day", item.day),
                y: .value("Sales", item.sales)
            )
        }
        .frame(height: 200)
        .padding()
    }
}

/*
#Preview {
    PointChartView()
}
*/
