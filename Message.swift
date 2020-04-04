//
//  Message.swift
//  IM Hermes
//
//  Created by Jason Floyd on 4/1/20.
//  Copyright © 2020 Floyd Design. All rights reserved.
//

import SwiftUI

struct Message: View {
    let sender:User
    let bodyTxt:String
    var body: some View {
        ZStack {
            Group {
                RoundedRectangle(cornerRadius: 20)
                    .background(Color(Constants.messageColor))
                Image(sender.profilePic)
            }
                
        }
    }
}

struct Message_Previews: PreviewProvider {
    static var previews: some View {
        Message(sender: User(profilePic: #imageLiteral(resourceName: "JasonTestPhoto"), username: "Jason Floyd"), bodyTxt: "hello")
    }
}
