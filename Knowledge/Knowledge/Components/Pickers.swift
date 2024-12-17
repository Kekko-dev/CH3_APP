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
                Link(destination: URL(string: "https://developer.apple.com/documentation/SwiftUI/Picker")!) {
                    Image(systemName: "info.circle")
                }
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
            
            createPicker(value: $selectedPickerValue, style:  styleSelected)
        }
        
    
        
        
        
    }
}


    
 

#Preview {
    Pickers()
}
