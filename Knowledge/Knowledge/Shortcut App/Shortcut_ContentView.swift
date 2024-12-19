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
                    
                    //CONTENT
                    HStack{
                        Text("Content")
                            .font(.title)
                            .fontWeight(.heavy)
                            .padding()
                        Spacer()
                    }
                    ScrollView(.horizontal){
                        HStack{
                            Text("Content components")
                        }
                    }
                    
                    //Layout and Organization
                    HStack{
                        Text("Layout and Organization")
                            .font(.title)
                            .fontWeight(.heavy)
                            .padding()
                        Spacer()
                    }
                    ScrollView(.horizontal){
                        HStack{
                            Text("Layout and organization components")
                        }
                    }
                    
                    //MENUS AND ACTIONS
                    HStack{
                        Text("Menus and Actions")
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
                           
                        }
                    }
                    
                    //NAVIGATION AND SEARCH
                    HStack{
                        Text("Navigation and Search")
                            .font(.title)
                            .fontWeight(.heavy)
                            .padding()
                        Spacer()
                    }
                    ScrollView(.horizontal){
                        HStack{
                            Text("Navigation and search components")
                        }
                    }
                    
                    //PRESENTATION
                    HStack{
                        Text("Presentation")
                            .font(.title)
                            .fontWeight(.heavy)
                            .padding()
                        Spacer()
                    }
                    ScrollView(.horizontal){
                        HStack{
                            Text("Presentation components")
                        }
                    }
                    
                    

                    //SELECTION AND INPUTS
                    HStack{
                        Text("Selection and Inputs")
                            .font(.title)
                            .fontWeight(.heavy)
                            .padding()
                        Spacer()
                    }
                        ScrollView(.horizontal){
                            HStack{
                                NavigationLink(destination: Pickers()){
                                    ShortcutCardView(icon: "rectangle.on.rectangle.angled", title: "Picker", color: .red)
                                        .padding(.bottom)
                                        .padding(.horizontal)
                                }
                            }
                        }
                    
                    
                    
                    //STATUS
                    HStack{
                        Text("Status")
                            .font(.title)
                            .fontWeight(.heavy)
                            .padding()
                        Spacer()
                    }
                    ScrollView(.horizontal){
                        HStack{
                            Text("Status components")
                        }
                    }
                    
                    
                    //SYSTEM EXPERIENCE
                    HStack{
                        Text("System Experience")
                            .font(.title)
                            .fontWeight(.heavy)
                            .padding()
                        Spacer()
                    }
                    ScrollView(.horizontal){
                        HStack{
                            Text("System Experience components")
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
