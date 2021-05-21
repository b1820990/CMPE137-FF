//
//  File.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/18/21.
//

import SwiftUI

class plModel: ObservableObject {
    @Published var pl = PLWorkout()
    @Published var isPresentingToast    : Bool  = false
    @Published var alert = AlertContext.workoutAdded
    
    func createNewWorkout(){
        self.pl = PLWorkout()
        alert = AlertContext.workoutAdded
        animateToast()
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
