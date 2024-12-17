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
    
    var body: some View {
        
        Section{
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
        
        createPicker(value: $selectedPickerValue, style:  styleSelected)
            .padding(.top, 20)
        
        
        
        
        
            .navigationTitle("Pickers")
    }
}





#Preview {
    Pickers()
}
