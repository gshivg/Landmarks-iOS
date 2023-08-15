//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Shivansh Gupta on 15/08/23.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modeldata: ModelData
    
    var body: some View {
        NavigationView {
            List {
                modeldata.features[0].image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modeldata.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modeldata.categories[key]!)
                        
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
