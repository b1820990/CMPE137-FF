//
//  PowerLiftInput.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/2/21.
//

import SwiftUI

struct PowerLiftInput: View {
    @State private var workoutIndex = 0
    var workouts = ["Bench Press", "Squats", "Deadlifts", "Curls", "Inclined Bench", "Misc"]
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Picker(selection: $workoutIndex, label: Text("Type")){
                        ForEach(0 ..< workouts.count){
                            Text(self.workouts[$0]).tag($0)
                            
                            }
                        }
                    FFTextField(titleKey: "Sets Done", text: .constant(""))
                    }
                VStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Submit")
                    })
                }
                }.navigationBarTitle(Text("Power Lift Workout"))
            }
    }
}

struct PowerLiftInput_Previews: PreviewProvider {
    static var previews: some View {
        PowerLiftInput()
    }
}
