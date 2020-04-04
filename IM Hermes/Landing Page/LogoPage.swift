//
//  ContentView.swift
//  IM Hermes
//
//  Created by Jason Floyd on 3/28/20.
//  Copyright © 2020 Floyd Design. All rights reserved.
//

import SwiftUI
/*
 * LogoPage
 *
 * this is the page that the user starts on which sends them to sign up/sign in pages
 */
struct LogoPage: View {
    var body: some View {
        NavigationView{
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(Constants.startGradient), Color(Constants.endGradient)]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    Spacer()
                    Image(Constants.logoImage)
                        .padding()
                    Spacer()
                    
                    NavigationLink(destination: FormView(formType: "Sign Up")) {
                        Text("Sign Up")
                        .foregroundColor(Color(Constants.buttonTextColor))
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color(Constants.buttonTextColor), lineWidth: 3)
                                .frame(width: 400, height: 60, alignment: .center))
                    }
                    .frame(width: 400, height: 60, alignment: .center)
                    .padding()
                    /*Button(action: {

                    }) {
                        Text("Sign Up")
                            .foregroundColor(Color(Constants.buttonTextColor))
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color(Constants.buttonTextColor), lineWidth: 3)
                                    .frame(width: 400, height: 60, alignment: .center)
                        )
                            .frame(width: 400, height: 60, alignment: .center)
                    }
                    .padding()*/
                    
                    NavigationLink(destination: FormView(formType: "Sign In")) {
                        Text("Sign In")
                            .foregroundColor(Color(Constants.buttonTextColor))
                            .padding()
                            .frame(width: 400, height: 60, alignment: .center)
                            .background(Color.green)
                            .cornerRadius(50)
                    }
                    .frame(width: 400, height: 60, alignment: .center)
                    .padding()
                   /* Button(action: {
                    }) {
                        Text("Sign Up")
                            .foregroundColor(Color(Constants.buttonTextColor))
                            .padding()
                            .frame(width: 400, height: 60, alignment: .center)
                            .background(Color.green)
                            .cornerRadius(50)
                    }
                    .padding()*/
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LogoPage()
    }
}
