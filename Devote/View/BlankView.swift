//
//  BlankView.swift
//  Devote
//
//  Created by Ragnhild Kjellevold Steinsland on 17/03/2021.
//

import SwiftUI

struct BlankView: View {
    //: PROPERTIES
    var backgroundColor: Color
    var BackgroundOpacity: Double
    
    //: BODY
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(backgroundColor)
        .opacity(BackgroundOpacity)
        .blendMode(.overlay)
        .edgesIgnoringSafeArea(.all)
    }
}

struct BlankView_Previews: PreviewProvider {
    static var previews: some View {
        BlankView(backgroundColor: Color.black, BackgroundOpacity: 0.3)
            .background(BackgroundImageView())
            .background(backgroundGradient.ignoresSafeArea(.all))
    }
}
