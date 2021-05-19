//
//  PL.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/18/21.
//

import Foundation

class PL: ObservableObject{
    @Published var plift = [PLWorkout]()
    
    func add(_ pl: PLWorkout){
        plift.append(pl)
    }
}
