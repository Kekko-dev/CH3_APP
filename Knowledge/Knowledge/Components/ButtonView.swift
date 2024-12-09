import SwiftUI



struct ButtonView: View {
    
    @State var iconOnly: Bool = false
    
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
            }
            
            // Button with conditional label style
            Button {
                print("Button tapped")
            } label: {
                Label("Add Item", systemImage: "plus") // Button label
            }
            .labelStyle(ConditionalLabelStyle(showIconOnly: iconOnly)) // Use custom label style
        }
        .padding()
    }
}

#Preview {
    ButtonView()
}
