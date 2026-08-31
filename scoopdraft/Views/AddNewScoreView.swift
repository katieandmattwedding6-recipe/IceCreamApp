//
//  AddNewScoreView.swift
//  scoopdraft
//
//  Created by Stewart Matthew J on 7/28/26.
//

import SwiftUI

struct AddNewScoreView: View {
    
    @State private var shopName = ""
    @State private var shopCity = ""
    @State private var shopState = ShopState.alabama
    @State private var visitDate = Date.now
    
    @State private var flavorName = ""
    @State private var servingMethod = IceCreamServingMethod.sugarCone
    @State private var userScore: Double = 5.0
    
    @State private var showingClearAlert = false
    
    var body: some View {
        
        Form {
            
            Section("Store Info") {
                TextField("Shop name", text: $shopName)
                TextField("Shop city", text: $shopCity)
                Picker("Shop state", selection: $shopState) {
                    ForEach(ShopState.allCases, id: \.self) {
                        shopState in Text(shopState.rawValue).tag(shopState)
                    }
                }
                DatePicker("Date of visit", selection: $visitDate, in: ...Date.now, displayedComponents: .date)
            }
            
            Section("Ice Cream Info") {
                TextField("Flavor name", text: $flavorName)
                Picker("Serving style", selection: $servingMethod) {
                    ForEach(IceCreamServingMethod.allCases, id: \.self) {
                        method in Text(method.rawValue).tag(method)
                    }
                }
                Stepper("Score: \(userScore, specifier: "%.1f")", value: $userScore, in: 1.0...10.0, step: 0.1)
            }
            
            //TODO will add after user info figured out
            //            Section("User Info") {
            //
            //            }
            
            Section {
                Button("Submit", role: .confirm) {
                    // submit
                }
                Button("Clear", role: .destructive) {
                    showingClearAlert = true
                }
                .alert("Clear form", isPresented: $showingClearAlert) {
                    Button("Clear", role: .destructive) {
                        clearForm()
                    }
                    Button("Cancel", role: .cancel) {
                    }
                }
            }
        }
        .navigationTitle("Add New Ranking")
    }
    
    private func clearForm() {
        shopName = ""
        shopCity = ""
        shopState = ShopState.alabama
        visitDate = Date.now
        
        flavorName = ""
        servingMethod = IceCreamServingMethod.sugarCone
        userScore = 5.0
        showingClearAlert = false
    }
}


#Preview {
    NavigationStack {
        AddNewScoreView()
    }
}
