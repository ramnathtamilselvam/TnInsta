//
//  LoginView.swift
//  SwiftUIBeginner
//
//  Created by Hitasoft on 10/02/21.
//  Copyright © 2021 Hitasoft. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var loginStr = ""
    let BoldCondesedFontName = "Poppins-ExtraBold"
    let boldFontName = "Poppins-Bold"
    let regularFontName = "Poppins-Regular"
    let lightFontName = "Poppins-Light"

    var body: some View {
        VStack(alignment: .leading, spacing: 22) {
            Button("Doctor Sign in") {
                
            }
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: 100, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 40, maxHeight: 40, alignment: .trailing)
            .font(Font.custom(regularFontName, size: 16))
            .foregroundColor(Color("AppColor"))
            VStack(alignment: .leading, spacing: 10) {
                Text("Welcome \nback")
                    .font(Font.custom(boldFontName, size: 27))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                Text("Sign in to Continue")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .lineLimit(1)
            }
            
            VStack(spacing: 20) {
                TextField("Email Address", text: $loginStr)
                    .padding(5)
                    .frame(height: 45.0)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                TextField("Password", text: $loginStr)
                    .padding(5)
                    .frame(height: 45.0)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 0)
                
                Button("Forgot Password?") {
                    
                }
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                .font(.subheadline)
                .foregroundColor(.gray)
            }
            VStack(alignment: .center, spacing: 20) {
                Button("Sign In") {
                    
                }
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: 100, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 45, maxHeight: 45, alignment: .center)
                .font(.subheadline)
                .foregroundColor(.white)
                .cornerRadius(5)
                .buttonStyle(ContainedButtonStyle())
                .previewDisplayName("ContainedButtonStyle")
                // MARK: Social Login
                HStack(spacing: 10.0) {
                    Rectangle()
                        .fill(Color.gray)
                        .frame(height: 1.0)
                    Text("OK")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color.gray)
                    Rectangle()
                        .fill(Color.gray)
                        .frame(height: 1.0)
                        
                }
                HStack(spacing: 30) {
                    Button(action: {
                        print("Edit button was tapped")
                    }) {
                        Image("fb")
                            .aspectRatio(contentMode: .fit)
                    }
                    .frame(width: 30.0, height: 30.0)
                    Button(action: {
                        print("Edit button was tapped")
                    }) {
                        Image("Google+")
                            .aspectRatio(contentMode: .fit)
                    }
                    .frame(width: 30.0, height: 30.0)
                    Button(action: {
                        print("Edit button was tapped")
                    }) {
                        Image("apple ")
                            .aspectRatio(contentMode: .fit)
                    }
                    .frame(width: 30.0, height: 30.0)
                }
            }
            Spacer()
            HStack {
                Spacer()
                Text("Don't have an account?")
                Button("SIGN UP") {
                    
                }
                .font(Font.custom(regularFontName, size: 16))
                .foregroundColor(Color("AppColor"))
                Spacer()
            }

        }
        .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/, 20.0)
        .frame(minWidth: 0, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
