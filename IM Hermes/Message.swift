//
//  Message.swift
//  IM Hermes
//
//  Created by Jason Floyd on 4/1/20.
//  Copyright © 2020 Floyd Design. All rights reserved.
//

import SwiftUI

/*
 * Message
 *
 * A simple message bubble with senders profile picture
 */

struct Message: View {
    let sender:User
    let bodyTxt:String
    @State var lines = 1
    var body: some View {
        HStack {
            Text(bodyTxt)
                .foregroundColor(.white)
                .frame(width: 200, alignment: .center)
                .padding(.vertical, 20)
                .padding(.horizontal, 10)
                .background(RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(Color(Constants.messageColor)))
            Image(uiImage: sender.profilePic)
                .resizable()
                .frame(width: 50, height: 50, alignment: .bottom)
                .clipShape(Circle())
        }
    }
}

struct Message_Previews: PreviewProvider {
    static var previews: some View {
        Message(sender: User(profilePic: #imageLiteral(resourceName: "JasonTestPhoto"), username: "Jason Floyd"), bodyTxt: "hello this is a test to see how the lines work here")
    }
}
