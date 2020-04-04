//
//  HomeNavBar.swift
//  IM Hermes
//
//  Created by Jason Floyd on 3/29/20.
//  Copyright © 2020 Floyd Design. All rights reserved.
//

import SwiftUI

struct HomeNavBar: View {
    
   let profilePic:UIImage
    let size:CGFloat
    
    var body: some View {
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image(uiImage: profilePic)
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 75, height: 75)
                    .clipShape(Circle())
            }.padding()
            Spacer()
            Text("Home")
                .font(.largeTitle)
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image(systemName: "plus")
                    .font(.system(size: 60))
            }.padding()
        }.frame(width: size, height: 150, alignment: .bottom)
            .background(Color(Constants.fadedColor))
    }
}

struct HomeNavBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeNavBar(profilePic: #imageLiteral(resourceName: "JasonTestPhoto"), size: 400).previewLayout(.sizeThatFits)
    }
}
