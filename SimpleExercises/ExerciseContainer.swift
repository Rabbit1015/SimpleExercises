//
//  ExerciseContainer.swift
//  SimpleExercises
//
//  Created by Steve Jennings on 10/18/23.
//

import Foundation
import SwiftData

actor ExerciseContainer {
    
    @MainActor
    static func create(shouldCreateDefaults: inout Bool) -> ModelContainer {
        let schema = Schema([ExerciseItem.self])
        let configuration = ModelConfiguration()
        let container = try! ModelContainer(for: schema, configurations: [configuration])
        if shouldCreateDefaults {
            shouldCreateDefaults = false

            
            let exerciseDefaults = DefaultsJSON.decode(from: "DefaultExercises", type: [ExerciseItem].self)
            
            exerciseDefaults?.forEach {
                exercise in container.mainContext.insert(exercise)
                
            }
        }

        return container
    }
    
}
