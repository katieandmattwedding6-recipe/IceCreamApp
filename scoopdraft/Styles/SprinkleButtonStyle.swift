//
//  SprinkleButtonStyle.swift
//  scoopdraft
//
//  Created by Stewart Matthew J on 7/9/26./Users/V32HVBZ/Desktop/MattsApps/ice cream/scoopdraft/scoopdraft/Views/ContentView.swift
//

import SwiftUI

struct SprinkleButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            .foregroundStyle(.black)
            .fontDesign(.rounded)
//            .buttonStyle(.borderedProminent)
            .background(
                Capsule().fill(SprinkleJar.randomColor()))
    }
}
