//
//  ContentView.swift
//  scoopdraft
//
//  Created by Stewart Matthew J on 7/8/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                NeapolitanBackground()
                
                VStack(spacing: 0) {
                    Spacer()
                    Text("Get the Scoop")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                    
                    Spacer()
                    Image("IceCreamCup")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .offset(y: 20)
                    
                    Spacer()
                    
                    HStack(spacing: 16) {
                        VStack(spacing: 16) {
                            NavigationLink {
                                CentralRankingView()
                            } label: {
                                Text("View Rankings")
                            }
                            .modifier(SprinkleButtonStyle())
                            
                            
                            NavigationLink {
                                AddNewScoreView()
                            }
                            label: {
                                Text("Add New Ranking")
                            }
                            .modifier(SprinkleButtonStyle())
                        }
                        
                        VStack(spacing: 16) {
                            NavigationLink {
                                SettingsView()
                            }
                            label: {
                                Text("Settings")
                            }
                            .modifier(SprinkleButtonStyle())
                            
                            NavigationLink {
                                AddNewUserView()
                            }
                            label: {
                                Text("Add new User")
                            }
                            .modifier(SprinkleButtonStyle())
                        }
                    }
                    .padding(.bottom, 90)
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
