//
//  ContentView.swift
//  Knowledge
//
//  Created by Francesco Silvestro on 06/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Components", systemImage: "square.3.layers.3d.top.filled") {
                Components()
                }


                Tab(" ", systemImage: "sparkles") {
                    SiriAI()
                }
                

                Tab("Settings", systemImage: "gear") {
                    Settings()
                }
                
        }
    }
}

#Preview {
    ContentView()
}
