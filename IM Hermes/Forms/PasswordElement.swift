//
//  PasswordElement.swift
//  IM Hermes
//
//  Created by Jason Floyd on 3/28/20.
//  Copyright © 2020 Floyd Design. All rights reserved.
//

import SwiftUI
/*
 * PasswordElement
 *
 * a simple textfeild formatted to look good on the screen and hides the users password as they type
 */
struct PasswordElement: View {
    
    let text:String
    
    var body: some View {
        SecureField("   \(text)", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .multilineTextAlignment(.center)
            .foregroundColor(Color(Constants.buttonTextColor))
            .frame(width: 350, height: 50, alignment: .center)
            .background(RoundedRectangle(cornerRadius: 50)
                .foregroundColor(Color(Constants.fadedColor)))
    }
}

struct PasswordElement_Previews: PreviewProvider {
    static var previews: some View {
        PasswordElement(text: "hello").previewLayout(.sizeThatFits)
    }
}
