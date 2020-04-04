//
//  ListItem.swift
//  IM Hermes
//
//  Created by Jason Floyd on 3/29/20.
//  Copyright © 2020 Floyd Design. All rights reserved.
//

import SwiftUI

/*
 * ListItem
 *
 * Displays a user and when the plus is selected will add user to a friend list
 */

struct ListItem: View {
    
    let img:UIImage
    let name:String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 100)
                .foregroundColor(Color(Constants.fadedColor))
                .frame(width: 400, height: 125, alignment: .center)
            VStack {
                HStack{
                    Image(uiImage: img)
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .clipShape(Circle())
                        .padding()
                        Text(name)
                            .font(.largeTitle)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "plus")
                            .font(.system(size: 50))
                    }
                }.frame(width: 400, height: 125, alignment: .center)
            }
        }
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem(img: #imageLiteral(resourceName: "JasonTestPhoto"), name: "Jason Floyd").previewLayout(.sizeThatFits)
    }
}
