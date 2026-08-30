//
//  AddNewScoreView.swift
//  scoopdraft
//
//  Created by Stewart Matthew J on 7/28/26.
//

import SwiftUI

struct AddNewScoreView: View {
    
    //
    //struct IceCreamScore: {
    //    let id = UUID()
    //    let userName: String
    //
    //    // Store details
    //
    //    // Ice cream info
    //    let rating: Float
    //    //let eatenDate: Date
    //}
    @State private var deliveryMethod = IceCreamDeliveryMethod.sugarCone
    
    @State private var shopName = ""
    @State private var shopCity = ""
    @State private var shopState = ShopState.alabama
    @State private var flavorName = ""
    
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
            }
            
            Section("Ice Cream Info") {
                TextField("Flavor name", text: $flavorName)
                Picker("Serving style", selection: $deliveryMethod) {
                    ForEach(IceCreamDeliveryMethod.allCases, id: \.self) {
                        method in Text(method.rawValue).tag(method)
                    }
                }
            }
            
            Section("User Info") {
                
            }
        }
    }
}


#Preview {
    AddNewScoreView()
}

struct Previews_AddNewScoreView_LibraryContent: LibraryContentProvider {
    var views: [LibraryItem] {
        LibraryItem(/*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/)
    }
}
