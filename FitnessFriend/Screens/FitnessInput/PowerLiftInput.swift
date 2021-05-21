//
//  PowerLiftInput.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/2/21.
//

import SwiftUI

struct PowerLiftInput: View {
    @EnvironmentObject var pl: PL
    @StateObject var viewModel = plModel()
    
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    TextField("Workout Type", text: $viewModel.pl.workout)
                }
                Section{
                    TextField("Sets Done", text: $viewModel.pl.sets)
                    }
                Section{
                    TextField("Reps Done", text: $viewModel.pl.reps)
                }
                VStack{
                    Button(action: {pl.add(viewModel.pl);viewModel.createNewWorkout()}, label: {
                        Text("Submit")
                    })
                }
                }.navigationBarTitle(Text("Power Lift Workout"))
            }
        .toast(isPresenting: $viewModel.isPresentingToast, alertItem: viewModel.alert)
    }
}

struct PowerLiftInput_Previews: PreviewProvider {
    static var previews: some View {
        PowerLiftInput()
    }
}
