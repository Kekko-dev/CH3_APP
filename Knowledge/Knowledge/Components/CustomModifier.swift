//
//  CustomModifier.swift
//  Knowledge
//
//  Created by Francesco Silvestro on 09/12/24.
//

import Foundation
import SwiftUI

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
