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
   
   var body: some View {
       VStack {
           Image(systemName: icon ) // Example icon
               .resizable()
               .scaledToFit()
               .frame(width: 50, height: 50)
               .foregroundColor(.white)
               .padding(.trailing, 95)
           
           
           Text(title)
               .font(.headline)
               .fontWeight(.heavy)
               .foregroundColor(.white)
               .padding(.top, 50)
               .padding(.trailing, 89)
           
       }
       .frame(width: 160, height: 150)
       .background(RoundedRectangle(cornerRadius: 25).fill(Color.blue))
       
   }
}

#Preview {
   ShortcutCardView(icon: "button.horizontal", title: "Button")
}
