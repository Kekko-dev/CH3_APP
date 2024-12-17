//
//  Pickers.swift
//  Knowledge
//
//  Created by Francesco Silvestro on 17/12/24.
//

import SwiftUI

struct Pickers: View {
    
    //Enumeration for picker values
    enum PickerValue: String, Identifiable {
        case Chocolate, Vanilla, Strawberry
        var id: Self { self }
    }
    
    //Variable for the picker
    @State var selectedPickerValue: PickerValue = .Chocolate
    
    
    //PickerStyleEnum
    public enum pickerStyleType{
        case automatic
        case wheel
        case segmented
        case menu
        case inline
        var id: Self { self }
    }
    
    //Variable for the picker style
    @State var styleSelected: pickerStyleType = .automatic
    
    
    @State var codeSnippetPicker: Bool = false
    
    var body: some View {
        
        VStack {
            Section{
                HStack{
                    Text("Pickers")
                        .font(.title)
                        .fontWeight(.bold)
                        .accessibilityLabel("Pickers Menu")
                    
                    Spacer()
                    
                    Link(destination: URL(string: "https://developer.apple.com/design/human-interface-guidelines/pickers")!) {
                        Image(systemName: "doc")
                            .accessibilityLabel("More information about Human Interface Guidelines")
                        
                    }
                    Button("Code snippet",systemImage: "curlybraces"){
                        codeSnippetPicker.toggle()
                    }
                    .labelStyle(.iconOnly)
                    .sheet(isPresented: $codeSnippetPicker) {
                        NavigationView {
                            CodeSnippetPicker(showCodeSnippetPicker: $codeSnippetPicker, style_of_the_picker: $styleSelected)
                                .navigationTitle("Code Snippet")
                                .navigationBarTitleDisplayMode(.inline)
                        }
                        .presentationDetents([.medium])
                        .presentationDragIndicator(.visible)
                        
                    }
                }
                        
                    }
                    HStack{
                        
                        DocumentationLink(
                            url: URL(string: "https://developer.apple.com/documentation/SwiftUI/Picker")!,
                            label: "More information about Picker Style documentation"
                        )
                        
                        
                        Text("Picker Style")
                        Spacer()
                        
                        Picker("Picker Style", selection: $styleSelected){
                            Text("Automatic").tag(pickerStyleType.automatic)
                            Text("Wheel").tag(pickerStyleType.wheel)
                            Text("Segmented").tag(pickerStyleType.segmented)
                            Text("Menu").tag(pickerStyleType.menu)
                            Text("Inline").tag(pickerStyleType.inline)
                        }
                        
                        
                        
                    }
                    .accessibilityElement(children: .combine)
                    .accessibilityLabel("Picker Style, current value: \(String(describing: styleSelected))")
                    .accessibilityHint("Swipe up or down to open the documentation")
                    
                }
                
                .padding(.top)
                
        Spacer()
                createPicker(value: $selectedPickerValue, style:  styleSelected)
                    .padding(.top, 20)
                
                Spacer()
                
                
                
                    .navigationTitle("Pickers")
            }
        }
    


#Preview {
    Pickers()
}
