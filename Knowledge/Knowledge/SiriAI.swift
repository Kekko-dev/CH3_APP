//
//  SiriAI.swift
//  Knowledge
//
//  Created by Francesco Silvestro on 06/12/24.
//

import SwiftUI

struct SiriAI: View {
    var body: some View {
        VStack{
            Image(systemName: "rainbow")
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.multicolor)
                .symbolEffect(.variableColor.reversing)
                .foregroundStyle(.pink)
                .padding(50)
            
            Text("Will come in the future!")
                .font(.largeTitle)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    SiriAI()
}
