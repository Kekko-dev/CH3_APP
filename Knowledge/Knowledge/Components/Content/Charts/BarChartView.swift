//
//  BarChartView.swift
//  LumiCode
//
//  Created by Francesco Silvestro on 26/12/24.
//

import SwiftUI
import Charts

struct BarChartView: View {
    let data: [SalesData]

    enum StackingOption: CaseIterable, Identifiable{
  
        case none
        case standard
        case center
        case normalized
        //case unstacked
        
        var id: Self { self }
        
    }
    
    @State var selectedStacking: StackingOption = .none
    
    var body: some View {
        Chart(data) { item in
            BarMark(
                x: .value("Day", item.day),
                y: .value("Sales", item.sales)
            )
            //.position(by: selectedStacking)
        }
        .frame(height: 200)
        .padding()
    }
}

/*
extension BarMark {
    
    func position(by option: BarChartView.StackingOption) -> some ChartContent {
        switch option {
        case .standard:
            return self.position(by: .standard)
        case .center:
            return self.position(by: .center)
        case .none:
            return self.position(by: .none)
        case .normalized:
            return self.position(by: .normalized)
       // case .unstacked:
          //  return self.position(by: .unstacked)
        }
    }
}
 */

#Preview {
    BarChartView(data: sampleData)
}

