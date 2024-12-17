import SwiftUI

struct ButtonView: View {
    
    @State private var iconOnly: Bool = false
    
    //ButtonStyle
    enum ButtonStyleCase: String, Identifiable {
        case plain, borderless, bordered, borderedProminent
        var id: Self { self }
    }
    @State private var selectedButtonStyle: ButtonStyleCase = .plain
    
    
    //ControlSize
    enum ControlSizeCase: CaseIterable, Sendable {
        case mini, small, regular, large, extraLarge
        var id: Self { self }
    }
    @State private var selectedControlSize: ControlSizeCase = .regular
    
    
    //ButtonRepeatBehavior
    enum ButtonRepeatBehaviorCase: Hashable, Sendable {
        case automatic, enabled, disabled
        var id: Self { self }
    }
    @State private var selectedButtonRepeatBehavior: ButtonRepeatBehaviorCase = .automatic
    
    
    //Button Shape
    enum ButtonShapeCase: Hashable, Sendable {
        case automatic, capsule, circle, roundedRectangle
        var id: Self { self }
    }
    @State private var selectedButtonShapeCase: ButtonShapeCase = .capsule
    
    var body: some View {
        VStack {
            //Icon selection
            Section {
                HStack {
                    DocumentationLink(
                        url: URL(string: "https://developer.apple.com/documentation/swiftui/labelstyle/icononly")!,
                        label: "More information about Icon Only settings"
                    )
                    
                    
                    
                    Toggle(isOn: $iconOnly) {
                        Text("Icon Only")
                    }
                    
                    
                }
                .accessibilityElement(children: .combine) // Combine all elements into one
                
                
                //ButtonStyle Picker
                HStack {
                    DocumentationLink(
                        url: URL(string: "https://developer.apple.com/documentation/swiftui/view/buttonstyle(_:)")!,
                        label: "More information about Button Style documentation"
                    )
                    
                    Text("Button Style")
                    Spacer()
                    Picker("Button Style", selection: $selectedButtonStyle) {
                        Text("Plain").tag(ButtonStyleCase.plain)
                        Text("Borderless").tag(ButtonStyleCase.borderless)
                        Text("Bordered").tag(ButtonStyleCase.bordered)
                        Text("Bordered Prominent").tag(ButtonStyleCase.borderedProminent)
                    }
                    .pickerStyle(.menu)
                }
                .accessibilityElement(children: .combine)
                
                //Button Size
                HStack {
                    DocumentationLink(
                        url: URL(string: "https://developer.apple.com/documentation/swiftui/view/controlsize(_:)")!,
                        label: "More information about Button Size documentation"
                    )
                    
                    
                    Text("Button Size")
                    Spacer()
                    Picker("Button Size", selection: $selectedControlSize) {
                        Text("Mini").tag(ControlSizeCase.mini)
                        Text("Small").tag(ControlSizeCase.small)
                        Text("Regular").tag(ControlSizeCase.regular)
                        Text("Large").tag(ControlSizeCase.large)
                        Text("Extra Large").tag(ControlSizeCase.extraLarge)
                    }
                    .pickerStyle(.menu)
                }
                .accessibilityElement(children: .combine)
                
                //ButtonRepeatBehavior
                
                HStack {
                    DocumentationLink(
                        url: URL(string: "https://developer.apple.com/documentation/swiftui/buttonrepeatbehavior")!,
                        label: "More information about Button Size documentation"
                    )
                    
                    
                    
                    Text("Button Repeat Behavior")
                    Spacer()
                    Picker("Button Repeat Behavior", selection: $selectedButtonRepeatBehavior) {
                        Text("Automatic").tag(ButtonRepeatBehaviorCase.automatic)
                        Text("Enabled").tag(ButtonRepeatBehaviorCase.enabled)
                        Text("Disabled").tag(ButtonRepeatBehaviorCase.disabled)
                        
                    }
                    .pickerStyle(.menu)
                }
                .accessibilityElement(children: .combine)
                
                //Button Shape
                HStack {
                    DocumentationLink(
                        url: URL(string: "https://developer.apple.com/documentation/swiftui/buttonbordershape")!,
                        label: "More information about Button Shape documentation"
                    )
                    
                    
                    Text("Button Shape")
                    Spacer()
                    Picker("Button Shape", selection: $selectedButtonShapeCase) {
                        Text("Automatic").tag(ButtonShapeCase.automatic)
                        Text("Capsule").tag(ButtonShapeCase.capsule)
                        Text("Circle").tag(ButtonShapeCase.circle)
                        Text("RoundedRectangle").tag(ButtonShapeCase.roundedRectangle)
                        
                    }
                    .pickerStyle(.menu)
                }
                .accessibilityElement(children: .combine)
                
            }
            .padding(10)
            Spacer()
            
            // Button with conditional label style
            Button {
                print("Button tapped")
            } label: {
                Label("Add Item", systemImage: "plus") // Button label
            }
            .labelStyle(ConditionalLabelStyle(showIconOnly: iconOnly)) // Use custom label style
            .applyButtonStyle(for: selectedButtonStyle) // Apply button style dynamically
            .applyControlSize(for: selectedControlSize)
            .applyButtonRepeatBehavior(for: selectedButtonRepeatBehavior)
            .applyButtonShape(for: selectedButtonShapeCase)
            
        }
        
        Spacer()
            .padding(.bottom, 40)
    }
    
    
}







#Preview {
    ButtonView()
}
