//
//  CardioInput.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/2/21.
//

import SwiftUI

struct CardioInput: View {
    @State private var workoutIndex = 0
    var workouts = ["Cardio", "Powerlifting", "Misc"]
    var body: some View {
        NavigationView{
            Form{
                Section{
                    FFTextField(titleKey: "Miles Ran", text: .constant(""))
                    }
                VStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Submit")
                    })
                }
                }.navigationBarTitle(Text("Cardio Workout"))
        }
    }
}


struct CardioInput_Previews: PreviewProvider {
    static var previews: some View {
        CardioInput()
    }
}
