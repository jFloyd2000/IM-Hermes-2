//
//  MessageThred.swift
//  IM Hermes
//
//  Created by Jason Floyd on 4/1/20.
//  Copyright © 2020 Floyd Design. All rights reserved.
//

import SwiftUI

/*
 * MessageThread
 *
 * Shows all of the mesages in a paticular thread
 *
 * if it is collaped it only shows thread name and user profile pics
 */

struct MessageThred: View {
    
    let otherUsers:[User]
    let nickname:String
    let thread:[MessageData]
    @State var expand = false
    var body: some View {
        VStack{
            ZStack {
                HStack{
                    Image(uiImage: otherUsers[0].profilePic)
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .clipShape(Circle())
                        .padding()
                    VStack{
                        Text(nickname)
                            .font(.largeTitle)
                        if(!expand){
                            Text(thread[thread.count - 1].bodyTxt)
                        }
                    }
                    Spacer()
                    Button(action: {
                        self.expand.toggle()
                              }) {
                                if(expand){
                                    Image(systemName: "arrowtriangle.down.fill")
                                       // .font(.system(size: 30))
                                        .foregroundColor(Color(Constants.buttonTextColor))
                                }
                                else{
                                    Image(systemName: "arrowtriangle.left.fill")
                                    //font(.system(size: 30))
                                    .foregroundColor(Color(Constants.buttonTextColor))
                                }
                              }
                    Spacer()
                }
            }
            if(expand){
                ScrollView{
                    ForEach(thread){ mssg in
                        Message(sender: mssg.sender, bodyTxt: mssg.bodyTxt)
                            .padding(.vertical, 10)
                    }
                }
            }
        }
        .frame(width: 400, alignment: .center)
        .background(RoundedRectangle(cornerRadius:50)
        .foregroundColor(Color(Constants.fadedColor)))
    }
}

struct MessageThred_Previews: PreviewProvider {
    static var previews: some View {
        MessageThred(otherUsers: [Constants.jasonUserObj], nickname: "Jason", thread: [MessageData(sender:Constants.jasonUserObj, bodyTxt: "hello")])
    }
}
