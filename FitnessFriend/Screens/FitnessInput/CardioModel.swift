//
//  CardioModel.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/18/21.
//

import SwiftUI

class CardioModel: ObservableObject{
    @Published var cardio = CardioWorkout()
    
    func createNewWorkout(){
        self.cardio = CardioWorkout()
        
    }
}
