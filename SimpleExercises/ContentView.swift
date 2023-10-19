//
//  ContentView.swift
//  SimpleExercises
//
//  Created by Steve Jennings on 10/17/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query var exercises: [ExerciseItem]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(exercises) { exercise in
                    VStack {
                        Text(exercise.title)
                        Text(exercise.category)
                    }
                    .padding()
                }
            }.navigationTitle("Exercises").navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView().modelContainer(for: ExerciseItem.self, inMemory: true)
}
