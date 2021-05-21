//
//  Cardio.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/18/21.
//

import Foundation

class Cardio: ObservableObject {
    @Published var cardioWork = [CardioWorkout]()
    @Published var didWork: Bool = false
    
    func add(_ cardio: CardioWorkout){
        cardioWork.append(cardio)
        didWork = true
    }
}
