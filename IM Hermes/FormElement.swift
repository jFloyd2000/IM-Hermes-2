//
//  FormElement.swift
//  IM Hermes
//
//  Created by Jason Floyd on 3/28/20.
//  Copyright © 2020 Floyd Design. All rights reserved.
//

import SwiftUI

struct FormElement: View {
    
    let text: String
    
    var body: some View {
        TextField("\(text)", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .multilineTextAlignment(.center)
            .foregroundColor(Color(Constants.buttonTextColor))
            .frame(width: 350, height: 50, alignment: .center)
            .background(RoundedRectangle(cornerRadius: 50)
                .foregroundColor(Color(Constants.fadedColor)))
            
    }
}

struct FormElement_Previews: PreviewProvider {
    static var previews: some View {
        FormElement(text: "Test").previewLayout(.sizeThatFits)
    }
}
