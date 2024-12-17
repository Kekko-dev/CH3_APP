//
//  CodeSnippetButton.swift
//  Knowledge
//
//  Created by Francesco Silvestro on 17/12/24.
//

import SwiftUI

struct CodeSnippetButton: View {
    
    @Binding var showCodeSnippet: Bool
    @Binding var selectedButtonSyle: ButtonView.ButtonStyleCase
    @Binding var selectedControlSize: ButtonView.ControlSizeCase
    @Binding var selectedButtonRepeatBehavior: ButtonView.ButtonRepeatBehaviorCase
    @Binding var selectedButtonShape: ButtonView.ButtonShapeCase
    
    var codeSnippet: String {
        // Generate a code snippet based on the current settings
        return """
            Button ("Name", systemImage: "plus"){
                // Action here
            }
            .labelStyle(.\(showCodeSnippet))
            .buttonStyle(.\(selectedButtonSyle))
            .controlSize(.\(selectedControlSize))
            .buttonRepeatBehavior(.\(selectedButtonRepeatBehavior))
            .buttonBorderShape(.\(selectedButtonShape))
            """
    }
    var body: some View {
        
        Text(codeSnippet)
            .font(.system(.body, design: .monospaced))
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .textSelection(.enabled) // allows users to select and copy the code
    }
}

/*
 #Preview {
 CodeSnippetButton(showCodeSnippet: ButtonView.init(codeSnippet: false) )
 }
 */
