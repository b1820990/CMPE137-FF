//
//  SwiftUIView.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/18/21.
//

import SwiftUI

struct cardioCell: View {
    let cardio: CardioWorkout
    let index: Int
    
    var body: some View {
        HStack(spacing: 5){
            VStack{
                Text("\(index)")
                    .font(.title3)
                    .foregroundColor(.secondary)
            }
            .frame(width: 35,alignment: .leading)
            VStack(alignment: .leading, spacing: 10){
                HStack{
                    Text("Miles Ran")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                }
                HStack{
                    Text("\(cardio.milesRan)")
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        cardioCell(cardio: CardioWorkout(milesRan:"5"), index: 1)
    }
}
