//
//  CodeSnippetPicker.swift
//  Knowledge
//
//  Created by Francesco Silvestro on 17/12/24.
//

import SwiftUI

struct CodeSnippetPicker: View {
    
    @Binding var showCodeSnippetPicker: Bool
    
    @Binding var style_of_the_picker : Pickers.pickerStyleType
    
    var codeSnippetPicker: String{
        return """

// Needed for the creation itself of the picker

    enum PickerValue: String, Identifiable {
        case Chocolate, Vanilla, Strawberry
        var id: Self { self }
    }

    @State var selectedPickerValue: PickerValue = .Chocolate

     Picker("Name of the picker", selection: $selectedPickerValue) {

        Text("Chocolate").tag(PickerValue.Chocolate)
        Text("Vanilla").tag(PickerValue.Vanilla)
        Text("Strawberry").tag(PickerValue.Strawberry)

        }
        .pickerStyle(.\(style_of_the_picker))

"""
    }
    var body: some View {
        ScrollView{
            Text(codeSnippetPicker)
                .font(.system(.body, design: .monospaced))
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
            .textSelection(.enabled)}
    }
}

/*
 #Preview {
 CodeSnippetPicker()
 }
 */
