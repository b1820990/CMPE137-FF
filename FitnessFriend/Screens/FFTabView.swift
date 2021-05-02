//
//  TabView.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 4/8/21.
//

import SwiftUI

struct FFTabView: View {
    var body: some View {
        TabView {
            
            Home()
                .tabItem{
                    Text("Home")
                }
            SelectionView()
                .tabItem{
                    
                    Text("Input")
                }
         }
    }
}

struct FFTabView_Previews: PreviewProvider {
    static var previews: some View {
        FFTabView()
    }
}
