//
//  DefaultsJSONDecoder.swift
//  SimpleExercises
//
//  Created by Steve Jennings on 10/17/23.
//

import Foundation

struct DefaultsJSON {
    
    static func decode<T: Codable>(from fileName: String, type: T.Type) -> T? {
        
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let result = try? JSONDecoder().decode(T.self, from: data) else {
            return nil
        }
        
        return result
    }
}
