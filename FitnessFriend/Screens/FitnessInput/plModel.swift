//
//  File.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/18/21.
//

import SwiftUI

class plModel: ObservableObject {
    @Published var pl = PLWorkout()
    
    func createNewWorkout(){
        self.pl = PLWorkout()
    }
}
