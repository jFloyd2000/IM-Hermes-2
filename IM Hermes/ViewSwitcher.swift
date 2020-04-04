//
//  ViewSwitcher.swift
//  IM Hermes
//
//  Created by Jason Floyd on 4/1/20.
//  Copyright © 2020 Floyd Design. All rights reserved.
//

import SwiftUI

struct ViewSwitcher: View {
    @State var currViewIndex = 0
    var body: some View {
        VStack{
            if currViewIndex == 0{
                ContentView(viewToggle: $currViewIndex)
            }
            else if currViewIndex == 1{
                Home()
            }
        }
    }
}

struct ViewSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ViewSwitcher()
    }
}
