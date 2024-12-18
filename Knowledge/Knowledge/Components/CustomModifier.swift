//
//  CustomModifier.swift
//  Knowledge
//
//  Created by Francesco Silvestro on 09/12/24.
//

import Foundation
import SwiftUI


//                              ACCESSIBILITY
struct DocumentationLink: View {
    let url: URL
    let label: String

    var body: some View {
        /*
         Image(systemName: "info.circle")
         .foregroundColor(.blue)
         .accessibilityLabel(label)
         .accessibilityHint("Double-tap, or select Open Documentation from the rotor.")
         .accessibilityAddTraits(.isButton)
         .accessibilityAction(named: "Open Documentation") {
         openLink()
         }
         */
        
        Button("Button",systemImage: "info.circle"){
            openLink()
        }
        .labelStyle(.iconOnly)
        .accessibilityLabel(label)
        .accessibilityHint("Double-tap, or select Open Documentation from the rotor.")
        .accessibilityAddTraits(.isButton)
        .accessibilityAction(named: "Open Documentation") {
            openLink()
            
        }
    }

    // Function to open the URL
    private func openLink() {
        UIApplication.shared.open(url)
    }
}

/* Implemented this struct for having a more optimized VoiceOver */















struct ConditionalLabelStyle: LabelStyle {
    var showIconOnly: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        if showIconOnly {
            configuration.icon // Show only the icon
        } else {
            HStack {
                configuration.icon // Show icon
                configuration.title // Show title
            }
        }
    }
}

/* I needed to create this struct that conforms to LabelStyle protocol that requires the function
 makeBody to be able to modify the button in the buttonView, because if I typed only : .labelStyle (iconOnly ? .iconOnly : .otherModifiers) This code doesn't work 'cause labelStyle expects a single type that conforms to the LabelStyle protocol but with this code it tries to switch between two types.
 How this struct works? The function makeBody expect a Configuration type, it represents the content and metadata of the label being styled. When I conform to the LabelStyle protocol and implement the makeBody(configuration:) method, SwiftUI provides this configuration as input. Configuration has 2 main properties: icon : some View, and title: some View.
 */


// Extension for applying button styles dynamically
extension View {
    func applyButtonStyle(for style: ButtonView.ButtonStyleCase) -> AnyView {
        switch style {
        case .plain:
            return AnyView(self.buttonStyle(PlainButtonStyle()))
        case .borderless:
            return AnyView(self.buttonStyle(BorderlessButtonStyle()))
        case .bordered:
            return AnyView(self.buttonStyle(BorderedButtonStyle()))
        case .borderedProminent:
            return AnyView(self.buttonStyle(BorderedProminentButtonStyle()))
        }
    }
}

/* I tried many approaches but no one worked because the returned type of the buttonstyle went in conflict with the function: nonisolated public func buttonStyle<S>(_ style: S) -> some View where S : PrimitiveButtonStyle, there was a mismatching between the retunr types from this function:
 
 func buildButton(for parameter: buttonStyleCase) -> some ButtonStyle {
         switch parameter {
         case .plain:
             return PlainButtonStyle()
         case .borderless:
             return BorderlessButtonStyle()
         case .bordered:
             return BorderedButtonStyle()
         case .borderedProminent:
             return BorderedProminentButtonStyle()
         }
     }
 
 OR
 
 func buildButton(for parameter: buttonStyleCase) -> some View {
         switch parameter {
         case .plain:
             return Button("bho"){}
                 .buttonStyle(PlainButtonStyle())
                 
         case .borderless:
             return Button("bho"){}
                 .buttonStyle(BorderlessButtonStyle())
                 
         case .bordered:
             return Button("bho"){}
                 .buttonStyle(BorderedButtonStyle())
                 
         case .borderedProminent:
             return Button("bho"){}
                 .buttonStyle(BorderedProminentButtonStyle())
         }
     }
 
 
 So I tried this approach of creating a new extension on the View that provides this function that takes from MY VIEW BUTTONVIEW: BUTTONVIEW and MY ENUM BUTTONSTYLECASE : BUTTONSTYLECASE, as a return type has AnyView instead of some View that gave to me a conflict between opaque return types like the PrimitiveButtonStyle and the BorderedProminentButtonStyle, the purpouse of Any is that the compiler will not be able to tell me in the compile-time some errors but instead I can set a type that I know is conforming at some way in the protocol of ButtonStyle, like Plain etc.

 
 */

extension View {
    
     func applyControlSize (for size: ButtonView.ControlSizeCase) -> some View {
        switch (size){
        case .mini:
            return self.controlSize(.mini)
        case .small:
            return self.controlSize(.small)
        case .regular:
            return self.controlSize(.regular)
        case .large:
            return self.controlSize(.large)
        case .extraLarge:
            return self.controlSize(.extraLarge)
        }
        
    }
    
}

//Added the controlSize picker function with the same logic, 'cause it said as an error that AnyView has no member "appluControlSize" so I added one without going in conflict of return types


extension View {
    func applyButtonRepeatBehavior (for behavior: ButtonView.ButtonRepeatBehaviorCase) -> some View {
        switch (behavior){
        case .automatic:
            return self.buttonRepeatBehavior(.automatic)
        case .enabled:
            return self.buttonRepeatBehavior(.enabled)
        case .disabled:
            return self.buttonRepeatBehavior(.disabled)
        }
    }
}


//Added the buttonRepeatBehavior selection dinamically


extension View {
    func applyButtonShape (for shape: ButtonView.ButtonShapeCase) -> some View {
        switch shape {
            
        case .automatic:
            return self.buttonBorderShape(.automatic)
            
        case .capsule:
            return self.buttonBorderShape(.capsule)
            
        case .circle:
            return self.buttonBorderShape(.circle)
            
        case .roundedRectangle:
            return self.buttonBorderShape(.roundedRectangle)
        }
    }
}





//                          PICKER VIEW

 func createPicker (value : Binding<Pickers.PickerValue> ,style: Pickers.pickerStyleType) -> some View {
    Group{
        switch style {
            
        case .automatic:
             Picker("Picker Value", selection: value) {
                Text("Chocolate").tag((Pickers.PickerValue.Chocolate))
                Text("Vanilla").tag((Pickers.PickerValue.Vanilla))
                Text("Strawberry").tag((Pickers.PickerValue.Strawberry))
            }
            .pickerStyle(.automatic)
        case .wheel:
             Picker("Picker Value", selection: value) {
                Text("Chocolate").tag((Pickers.PickerValue.Chocolate))
                Text("Vanilla").tag((Pickers.PickerValue.Vanilla))
                Text("Strawberry").tag((Pickers.PickerValue.Strawberry))
            }
            .pickerStyle(.wheel)
            
        case .segmented:
             Picker("Picker Value", selection: value) {
                Text("Chocolate").tag((Pickers.PickerValue.Chocolate))
                Text("Vanilla").tag((Pickers.PickerValue.Vanilla))
                Text("Strawberry").tag((Pickers.PickerValue.Strawberry))
            }
            .pickerStyle(.segmented)
            
        case .menu:
             Picker("Picker Value", selection: value) {
                Text("Chocolate").tag((Pickers.PickerValue.Chocolate))
                Text("Vanilla").tag((Pickers.PickerValue.Vanilla))
                Text("Strawberry").tag((Pickers.PickerValue.Strawberry))
            }
            .pickerStyle(.menu)
            
        case .inline:
             Picker("Picker Value", selection: value) {
                Text("Chocolate").tag((Pickers.PickerValue.Chocolate))
                Text("Vanilla").tag((Pickers.PickerValue.Vanilla))
                Text("Strawberry").tag((Pickers.PickerValue.Strawberry))
            }
            .pickerStyle(.inline)
            
        }
    }
}

/*
 I created this function, a little bit mechanic, because if I created this feature as the buttons functions it went in some conflict. This function takes as parameters:
 1) value: Need to be binded 'cause it changes the value with a State variable and needs to reflect it in the view
 2) style: Even if the style is a state value, in this function it doesn't need to be binded because it doesn't need to reflect the changes between the views but just sets the switch
 
 */


/*
                                PREVIOUS FUNCTION IMPLEMENTED
 
 func pickerStyle(for style: Pickers.PickerStyleType) -> some View {
         switch style {
         case .automatic:
             return self.pickerStyle(.automatic)
         case .inline:
             return self.pickerStyle(.inline)
         case .wheel:
             return self.pickerStyle(.wheel)
         case .segmented:
             return self.pickerStyle(.segmented)
         case .menu:
             return self.pickerStyle(.menu)
         }
     }
 
                                        DOESN'T WORK
 
 */



