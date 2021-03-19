//
//  CheckBoxStyle.swift
//  Devote
//
//  Created by Ragnhild Kjellevold Steinsland on 19/03/2021.
//

import SwiftUI

struct CheckBoxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .foregroundColor(configuration.isOn ? .pink : .primary)
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            configuration.label
        }
    }
}

struct CheckBoxStyle_Previews: PreviewProvider {
    static var previews: some View {
        Toggle("Placeholder lable", isOn: .constant(true))
            .toggleStyle(CheckBoxStyle())
            .padding()
            .previewLayout(.sizeThatFits)
    }
}