//
//  Home.swift
//  IM Hermes
//
//  Created by Jason Floyd on 3/29/20.
//  Copyright © 2020 Floyd Design. All rights reserved.
//

import SwiftUI

struct Home: View {
    let bottomBarDefault = 0
    let bottomViewDefault = 500
    @State var bottomBarSize:CGFloat = 0
    var body: some View {
        NavigationView{
            GeometryReader { geometry in
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(Constants.startGradient), Color(Constants.endGradient)]), startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    /*    VStack {
                     Text("").frame(width: UIScreen.main.bounds.width, height: 150, alignment: .center)
                     .background(Color(Constants.fadedColor))
                     .offset(x: 0, y: -UIScreen.main.bounds.height/2)
                     }.edgesIgnoringSafeArea(.top)*/
                    
                    //.padding()
                    VStack {
                        HStack {
                            Spacer()
                            /*NavigationLink(destination: AddFriend()) {
                             /*Text("hello")
                             .foregroundColor(Color(Constants.buttonTextColor))
                             .padding()
                             .frame(width: 350, height: 60, alignment: .center)
                             .background(Color.blue)
                             .cornerRadius(50)*/
                             Image(systemName: "plus")
                             .font(.system(size: 60))
                             }*/
                        }.frame(width: 400, height: 70)
                        // Spacer()
                        ScrollView{
                            Spacer()
                            VStack {
                                Spacer()
                                Spacer()
                                MessageThred(otherUsers: [Constants.jasonUserObj], nickname: "Jason", thread: [MessageData(sender:Constants.jasonUserObj, bodyTxt: "hello")])
                                MessageThred(otherUsers: [Constants.jasonUserObj], nickname: "Jason", thread: [MessageData(sender:Constants.jasonUserObj, bodyTxt: "test")])
                            }
                        }.blur(radius: self.bottomBarSize * 0.01)
                        
                        
                    }
                    .edgesIgnoringSafeArea(.top)
                    //.navigationBarTitle("Home")
                    /*.navigationBarItems(leading: NavigationLink(destination: AddFriend()) {
                     Image(uiImage: #imageLiteral(resourceName: "JasonTestPhoto"))
                     .resizable()
                     .frame(width: 40, height: 40, alignment: .center)
                     .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                     },
                     trailing:  NavigationLink(destination: AddFriend()) {
                     Image(systemName: "plus")
                     .font(.system(size: 45))
                     })
                     .navigationBarTitle("Home", displayMode: .inline)
                     //self.navigationBarBackButtonHidden(true)*/
                    AddFriend()
                        .cornerRadius(50)
                        .edgesIgnoringSafeArea(.all)
                        //.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2, alignment: .bottom)
                        .offset(x: 0, y: (geometry.size.height) - (190 + self.bottomBarSize))
                        .gesture(DragGesture()
                            .onChanged({ (value) in
                                self.bottomBarSize = value.translation.height * -1
                                if self.bottomBarSize < 0{
                                    self.bottomBarSize = 0
                                }
                            })
                            .onEnded { value in
                                if self.bottomBarSize > 200{
                                    self.bottomBarSize = 600
                                }
                                else{
                                    self.bottomBarSize = 0
                                }
                        })
                    Text("").frame(width: geometry.size.width, height: 70)
                        .background(Color(Constants.bottomBarColor))
                        .offset(x: 0, y: (geometry.size.height/2)-30)
                    
                    
                }
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
