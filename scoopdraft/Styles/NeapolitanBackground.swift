//
//  NeapolitanBackground.swift
//  scoopdraft
//
//  Created by Stewart Matthew J on 7/9/26.
//

import SwiftUI

struct NeapolitanBackground: View {
    var body: some View {
        
        VStack(spacing: 0) {
            Color(red: 0.96, green: 0.76, blue: 0.82) // Strawberry
            Color(red: 0.98, green: 0.95, blue: 0.85) // Vanilla
            Color(red: 0.45, green: 0.29, blue: 0.22) // Chocolate
            
        }
        .ignoresSafeArea(edges: .all)
    }
}
