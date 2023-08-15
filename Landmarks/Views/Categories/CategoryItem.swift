//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Shivansh Gupta on 15/08/23.
//

import SwiftUI

struct CategoryItem: View {
    var lankmark: Landmark
    var body: some View {
        VStack(alignment: .leading) {
            lankmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(lankmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(lankmark: ModelData().landmarks[0])
    }
}
