//
//  Workouts.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 4/8/21.
//

import Foundation
import SwiftUI

struct RunWorkout: Encodable, Identifiable {
    let id = UUID()
    
    var miles: String = ""
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}

struct LiftWorkout: Encodable, Identifiable{
    let id = UUID()
    var reps: String = ""
    var sets: String = ""
    var workout: Lift_Type = .defaultType
}

enum Lift_Type: String, CaseIterable, Encodable {
    case defaultType = "N/A"
    case bench = "Bench Press"
    case squats = "Squats"
    case curls = "Curls"
    case misc  = "Misc"
}

enum Workout_Type: String, CaseIterable, Identifiable{
    case defaultType = "N/A"
    case cardio = "Cardio"
    case PowerLifting = "PowerLifting"
    var id: Workout_Type{self}
}
