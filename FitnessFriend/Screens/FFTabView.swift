//
//  TabView.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 4/8/21.
//

import SwiftUI

struct FFTabView: View {
    var cardio = Cardio()
    var pl = PL()
    var u = userN()
    var body: some View {
        TabView {
            
            Home()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            SelectionView()
                .tabItem{
                    Image(systemName: "pencil")
                    Text("Input")
                }
            Profile()
                .tabItem{
                    Image(systemName: "person")
                    Text("Profile")
                }
            
         }
        .environmentObject(cardio)
        .environmentObject(pl)
        .environmentObject(u)
    }
}

struct FFTabView_Previews: PreviewProvider {
    static var previews: some View {
        FFTabView()
    }
}
