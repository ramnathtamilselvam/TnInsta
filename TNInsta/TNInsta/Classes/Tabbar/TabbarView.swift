//
//  TabbarView.swift
//  SwiftUIBeginner
//
//  Created by Hitasoft on 10/02/21.
//  Copyright © 2021 Hitasoft. All rights reserved.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    if #available(iOS 14.0, *) {
                        Label("Fav", systemImage: "list.dash")
                    } else {
//                        Text(
                        // Fallback on earlier versions
                    }
                }
            LoginView()
                .tabItem {
                    if #available(iOS 14.0, *) {
                        Label("Sign in", systemImage: "list.dash")
                    } else {
//                        Text(
                        // Fallback on earlier versions
                    }
                }
        }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
