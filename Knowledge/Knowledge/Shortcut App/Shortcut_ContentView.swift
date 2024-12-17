//
//  Shortcut_ContentView.swift
//  Knowledge
//
//  Created by Francesco Silvestro on 17/12/24.
//

import SwiftUI

struct Shortcut_ContentView: View {
    var body: some View {
        
        NavigationStack{
            ScrollView{
                VStack{
                    HStack{
                        Text("Inputs")
                            .font(.title)
                            .fontWeight(.heavy)
                            .padding()
                        Spacer()
                    }
                    ScrollView(.horizontal){
                        HStack{
                            NavigationLink(destination: ButtonView()) {
                                ShortcutCardView(icon: "button.horizontal", title: "Button", color: .blue)
                                    .padding(.bottom)
                                    .padding(.horizontal)
                            }
                            NavigationLink(destination: Pickers()){
                                ShortcutCardView(icon: "rectangle.on.rectangle.angled", title: "Picker", color: .red)
                                    .padding(.bottom)
                                    .padding(.horizontal)
                            }
                        }
                    }
                }
            }
        }
        .navigationTitle("Components")
    }
}

#Preview {
    Shortcut_ContentView()
}
