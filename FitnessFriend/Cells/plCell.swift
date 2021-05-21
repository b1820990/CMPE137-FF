//
//  plCell.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/18/21.
//

import SwiftUI

struct plCell: View {
    let pl: PLWorkout
    let index: Int
    
    var body: some View {
        HStack(spacing: 5){
            VStack{
                Text("\(index)")
                    .font(.title3)
                    .foregroundColor(.secondary)
            }
            .frame(width: 35, alignment: .top)
            VStack(alignment: .leading, spacing: 10){
                HStack{
                    Text("\(pl.workout)")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                HStack{
                    Text("Reps: \(pl.sets)")
                    Text("Sets: \(pl.reps)")
                }
            }
        }
    }
}

struct plCell_Previews: PreviewProvider {
    static var previews: some View {
        plCell(pl: PLWorkout(reps: "1", sets: "1", workout: "Bench Press"), index: 1)
    }
}
