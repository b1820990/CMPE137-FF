//
//  CardioModel.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/18/21.
//

import SwiftUI

class CardioModel: ObservableObject{
    @Published var cardio = CardioWorkout()
    @Published var isPresentingToast    : Bool  = false
    @Published var alert = AlertContext.workoutAdded
    @Published var didWork: Bool = false
    
    func createNewWorkout(){
        self.cardio = CardioWorkout()
        alert = AlertContext.workoutAdded
        animateToast()
        didWork = true;
    }
    func animateToast() {
        withAnimation {
            self.isPresentingToast = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.25) {
                withAnimation {
                    self.isPresentingToast = false
                }
            }
        }
    }
}
