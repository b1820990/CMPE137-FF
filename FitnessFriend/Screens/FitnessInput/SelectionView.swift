//
//  SelectionView.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 4/29/21.
//

import SwiftUI

struct SelectionView: View {
    @State private var toggled = false
    @EnvironmentObject var cardio: Cardio
    @State private var workoutIndex = 0
    var workouts = ["Cardio", "Powerlifting"]
    
var body: some View {
    NavigationView{
        Form{
            Section{
                Picker(selection: $workoutIndex, label: Text("Workouts")){
                    ForEach(0 ..< workouts.count){
                        Text(self.workouts[$0]).tag($0)
                        
                        }
                    }
                }
            Section{
                if workoutIndex == 0{
                NavigationLink(
                    destination: CardioInput(),
                    label: {
                        Text("Next")
                    })
            }
                else if workoutIndex == 1 {
                    NavigationLink(
                        destination: PowerLiftInput(),
                        label: {
                            Text("Next")
                        })
                }
            }
            }.navigationBarTitle(Text("Workouts"))
        }
    }
}


struct SelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SelectionView()
    }
}

