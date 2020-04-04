//
//  AddFriend.swift
//  IM Hermes
//
//  Created by Jason Floyd on 3/30/20.
//  Copyright © 2020 Floyd Design. All rights reserved.
//

import SwiftUI

/*
 * AddFriend
 *
 * A View that allows users to search for other users and add them to their friend list allowing them to be able to chat
 * Also has a button that takes the user to user settings page
 */


struct AddFriend: View {
    var body: some View {
        //NavigationView {
            ZStack {
            Color(Constants.fadedColor)
                VStack {
                    HStack{
                        Image(uiImage: #imageLiteral(resourceName: "JasonTestPhoto"))
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        FormElement(text: "Find Friends")
                    }
                        .frame(width: UIScreen.main.bounds.width, height: 120, alignment: .bottom)
                        .padding(.bottom, 20)
                    .background(Color(Constants.fadedColor))
                    
                    Spacer()
                    NavigationView {
                        ScrollView{
                            VStack {
                                ListItem(img: #imageLiteral(resourceName: "JasonTestPhoto"), name: "Jason")
                            }
                       // .navigationBarTitle("")
                        //.navigationBarHidden(true)
                        }
                    }.background(Color(Constants.fadedColor))
                }
                
            }
        }
    }
//}

struct AddFriend_Previews: PreviewProvider {
    static var previews: some View {
        AddFriend()
    }
}
