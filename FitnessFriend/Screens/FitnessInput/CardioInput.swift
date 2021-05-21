//
//  CardioInput.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/2/21.
//

import SwiftUI

struct CardioInput: View {
    @EnvironmentObject var cardio: Cardio
    @StateObject var viewModel = CardioModel()
    @State private var workoutIndex = 0 
    
   
    
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    TextField("Miles Ran", text: $viewModel.cardio.milesRan )
                    }
                VStack{
                    Button(action: {cardio.add(viewModel.cardio); viewModel.createNewWorkout()}, label: {
                        Text("Submit")
                    })
                        
                    
                }
                }.navigationBarTitle(Text("Cardio Workout"))
        }
        .toast(isPresenting: $viewModel.isPresentingToast, alertItem: viewModel.alert)
    }
}



struct CardioInput_Previews: PreviewProvider {
    static var previews: some View {
        CardioInput()
    }
}
