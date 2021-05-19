//
//  Home.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 4/8/21.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var cardio: Cardio
    @EnvironmentObject var pl: PL
    @StateObject var viewModel = HomeModel()
    @State private var test = true
   
    
    var body: some View {
        ZStack{
        NavigationView{
            HStack{
            VStack{
                List(cardio.cardioWork.indices, id: \.self){ index in
                    cardioCell(cardio: cardio.cardioWork[index], index: index+1)
                }
            VStack{
                List(pl.plift.indices, id: \.self){ index in
                    plCell(pl: pl.plift[index], index: index+1)
                }
                }
            }
                .listStyle(PlainListStyle())
            }
            
        }
    
    }
}
}

