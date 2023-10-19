//
//  SimpleExercisesApp.swift
//  SimpleExercises
//
//  Created by Steve Jennings on 10/17/23.
//

import SwiftUI

@main
struct SimpleExercisesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().modelContainer(for: ExerciseItem.self)
        }
    }
}
