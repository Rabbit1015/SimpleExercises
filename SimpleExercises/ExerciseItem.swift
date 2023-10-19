//
//  ExerciseItem.swift
//  SimpleExercises
//
//  Created by Steve Jennings on 10/17/23.
//

import Foundation
import SwiftUI
import SwiftData

@Model
class ExerciseItem: Codable{
    var title: String
    var category: String
    var isFaved: Bool
    
    init(title: String, category: String, isFaved: Bool) {
        self.title = title
        self.category = category
        self.isFaved = isFaved
    }
    
    enum CodingKeys: String, CodingKey{
        case title
        case category
        case isFaved
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.title = try container.decode(String.self, forKey: .title)
        self.category = try container.decode(String.self, forKey: .category)
        self.isFaved = try container.decode(Bool.self, forKey: .isFaved)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encode(category, forKey: .category)
        try container.encode(isFaved, forKey: .isFaved)
    }
}
