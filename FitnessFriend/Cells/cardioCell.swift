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
        HStack{
            VStack{
                Text("\(index)")
                    .font(.title3)
                    .foregroundColor(.secondary)
            }
            .frame(width: 35, alignment: .leading)
            VStack(alignment: .leading){
                HStack{
                    Text("Running Workout")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                }
                HStack{
                    Text("Miles Ran: \(cardio.milesRan)")
                    Spacer()
                    Text("Date :")
                    Text(Date(),style: .date)
                }
            }
        }
      
        
    }
}

