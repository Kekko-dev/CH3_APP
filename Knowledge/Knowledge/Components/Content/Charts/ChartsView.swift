//
//  ChartsView.swift
//  LumiCode
//
//  Created by Francesco Silvestro on 26/12/24.
//

import SwiftUI

struct ChartsView: View {
    let data = sampleData
    
    enum differentChartViews: Hashable {
        case barChart
        case lineChart
        case pointChart
        case areaChart
        
    }
    
    @State var selectedChart: differentChartViews = .barChart
    
    
    var body: some View {
        VStack{
            
            Section {
                HStack{
                    Text("Charts")
                        .font(.title)
                        .fontWeight(.bold)
                        .accessibilityLabel("Button Menu")
                        .padding(.leading, 5)
                    
                    Spacer()
                    
                    
                    Link(destination: URL(string: "https://developer.apple.com/design/human-interface-guidelines/charts")!) {
                        Image(systemName: "doc")
                            .accessibilityLabel("More information about Human Interface Guidelines")
                        
                    }
                    .padding(.trailing,5)
                }
            }
            
            
                HStack {
                    
                    DocumentationLink(
                        url: URL(string: "https://developer.apple.com/documentation/Charts/Creating-a-chart-using-Swift-Charts")!,
                        label: "More information about Chart Documentation"
                    )
                    
                    Text("Chart Style")
                    
                Picker("Chart picker", selection: $selectedChart) {
                    Text("Bar Chart").tag(differentChartViews.barChart)
                    Text("Line Chart").tag(differentChartViews.lineChart)
                    Text("Point Chart").tag(differentChartViews.pointChart)
                    Text("Area Chart").tag(differentChartViews.areaChart)
                }
                .pickerStyle(.menu)
            }
            
            // Display the selected chart
            Group {
                switch selectedChart {
                case .barChart:
                    BarChartView(data: data)
                case .lineChart:
                    LineChartView(data: data)
                case .pointChart:
                    PointChartView(data: data)
                case .areaChart:
                    AreaChartView(data: data)
                }
            }
            .frame(height: 300) // Adjust height as needed
            .padding()
        }
        
        
    }
}

#Preview {
    ChartsView()
}
