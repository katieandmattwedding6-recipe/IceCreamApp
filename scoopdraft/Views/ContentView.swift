//
//  ContentView.swift
//  scoopdraft
//
//  Created by Stewart Matthew J on 7/8/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            NeapolitanBackground()
            
            VStack(spacing: 20) {
                Spacer()
                Text("Get the Scoop")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .fontDesign(.rounded)
                Spacer()
                
                HStack {
                    Button {
                        //flagTapped(number)
                    } label: {
                        Text("View Rankings")
                    }
                    .modifier(
                        SprinkleButtonStyle())
                    
                    Button {
                        //action
                    }
                    label: {
                        Text("Add New Ranking")
                    }
                    .modifier(SprinkleButtonStyle())
                }
                .padding(.bottom, 90)
            }
        }
    }
}

#Preview {
    ContentView()
}
