import SwiftUI

struct ButtonView: View {
    @State private var iconOnly: Bool = false
    
    enum ButtonStyleCase: String, Identifiable {
        case plain, borderless, bordered, borderedProminent
        var id: Self { self }
    }
    
    @State private var selectedButtonStyle: ButtonStyleCase = .plain
    
    var body: some View {
        VStack {
            // Section with Toggle
            Section {
                HStack {
                    Link(destination: URL(string: "https://developer.apple.com/documentation/swiftui/labelstyle/icononly")!) {
                        Image(systemName: "info.circle")
                    }
                    
                    Toggle(isOn: $iconOnly) {
                        Text("Icon Only")
                    }
                }
                
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
            }
            
            // Button with conditional label style
            Button {
                print("Button tapped")
            } label: {
                Label("Add Item", systemImage: "plus") // Button label
            }
            .labelStyle(ConditionalLabelStyle(showIconOnly: iconOnly)) // Use custom label style
            .applyButtonStyle(for: selectedButtonStyle) // Apply button style dynamically
        }
        .padding()
    }
}





#Preview {
    ButtonView()
}
