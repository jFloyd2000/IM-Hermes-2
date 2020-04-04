//
//  FormView.swift
//  IM Hermes
//
//  Created by Jason Floyd on 3/28/20.
//  Copyright © 2020 Floyd Design. All rights reserved.
//

import SwiftUI

/*
 * FormView
 *
 * Takes in the form type as an input and creates either a sign in or sign up page
 */


struct FormView: View {
    
    let formType:String
    
    var body: some View {
        
        
        NavigationView{
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(Constants.startGradient), Color(Constants.endGradient)]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 400, height: 400, alignment: .center)
                    .foregroundColor(Color(Constants.fadedColor))
                VStack {
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                    FormElement(text: "Username")
                    PasswordElement(text: "Password")
                    if(formType == "Sign Up"){
                        PasswordElement(text: "Re-enter Password")
                    }
                    Button(action:{
                        
                    }){
                        Text(formType)
                            .foregroundColor(Color(Constants.buttonTextColor))
                            .padding()
                            .frame(width: 350, height: 60, alignment: .center)
                            .background(Color.blue)
                            .cornerRadius(50)
                    }
                    .padding()
                    
                    
                }
            }
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView(formType: "Sign in")
    }
}




