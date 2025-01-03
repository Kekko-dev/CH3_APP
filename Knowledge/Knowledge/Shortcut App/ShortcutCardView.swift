//
//  ShortcutGridView.swift
//  Knowledge
//
//  Created by Francesco Silvestro on 17/12/24.
//

import SwiftUI

struct ShortcutCardView: View {
   
   var icon : String
   var title : String
    var color: Color
    
   var body: some View {
       VStack {
           Image(systemName: icon ) // Example icon
               .resizable()
               .scaledToFit()
               .frame(width: 50, height: 50)
               .foregroundColor(.white)
               .padding(.trailing, 90)
           
           
           Text(title)
               .font(.headline)
               .fontWeight(.heavy)
               .foregroundColor(.white)
               .padding(.top, 50)
               .padding(.trailing, 65)
           
       }
       .frame(width: 160, height: 150)
       .background(RoundedRectangle(cornerRadius: 25).fill(color.gradient))
       .accessibilityElement(children: .combine)
       .accessibilityLabel("Card for Button with \(icon) Icon and title \(title) with Color \(color)")
   }
}

#Preview {
    ShortcutCardView(icon: "button.horizontal", title: "Button", color: .blue)
}
