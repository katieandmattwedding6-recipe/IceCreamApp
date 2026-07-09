//
//  SprinkleJar.swift
//  scoopdraft
//
//  Created by Stewart Matthew J on 7/9/26.
//

import SwiftUI

enum SprinkleJar {
    static let colors: [Color] = [
        .pink,
        .yellow,
        .green,
        .blue,
        .orange,
        .purple
    ]
    
    static func randomColor() -> Color {
            colors.randomElement() ?? .pink
        }

}
