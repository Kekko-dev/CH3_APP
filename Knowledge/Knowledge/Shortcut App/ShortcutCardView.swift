//
//  ShortcutGridView.swift
//  Knowledge
//
//  Created by Francesco Silvestro on 17/12/24.
//

import SwiftUI

struct ShortcutCardView: View {
    var index: Int
    
    var body: some View {
        VStack {
            Image(systemName: "star.fill") // Example icon
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundColor(.yellow)
            
            Text("Shortcut \(index + 1)")
                .font(.caption)
                .foregroundColor(.primary)
        }
        .frame(width: 100, height: 100)
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
        .shadow(radius: 5)
    }
}

#Preview {
    ShortcutGridView()
}
