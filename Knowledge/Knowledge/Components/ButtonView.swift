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
    
   
    
    
    
    var body: some View {
        VStack {
            //Icon selection
            Section {
                HStack {
                    Link(destination: URL(string: "https://developer.apple.com/documentation/swiftui/labelstyle/icononly")!) {
                        Image(systemName: "info.circle")
                    }
                    
                    Toggle(isOn: $iconOnly) {
                        Text("Icon Only")
                    }
                }
                //ButtonStyle Picker
                HStack {
                    Link(destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/buttonstyle(_:)")!) {
                        Image(systemName: "info.circle")
                    }
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
                
                //Button Size
                HStack {
                    Link(destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/controlsize(_:)")!) {
                        Image(systemName: "info.circle")
                    }
                    
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
                
                
            }
            
            // Button with conditional label style
            Button {
                print("Button tapped")
            } label: {
                Label("Add Item", systemImage: "plus") // Button label
            }
            .labelStyle(ConditionalLabelStyle(showIconOnly: iconOnly)) // Use custom label style
            .applyButtonStyle(for: selectedButtonStyle) // Apply button style dynamically
            .applyControlSize(for: selectedControlSize)
            .buttonRepeatBehavior(.enabled)
        }
        .padding()
    }
    
    
    }






#Preview {
    ButtonView()
}
