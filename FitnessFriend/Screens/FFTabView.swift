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
    var body: some View {
        TabView {
            SelectionView()
                .tabItem{
                    
                    Text("Input")
                }
            Home()
                .tabItem{
                    Text("Home")
                }
            
         }
        .environmentObject(cardio)
        .environmentObject(pl)
        
    }
}

struct FFTabView_Previews: PreviewProvider {
    static var previews: some View {
        FFTabView()
    }
}
