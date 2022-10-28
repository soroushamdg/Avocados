//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Soro on 2022-10-28.
//

import SwiftUI

struct RecipeRatingView: View {
    var recipe : Recipe
    var body: some View {
        HStack {
            ForEach(1...recipe.rating, id:\.self){star in
                Image(systemName: "star.fill")
                    .font(.body)
                .foregroundColor(.yellow)
            }
        }
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipeData[0])
            .previewLayout(.sizeThatFits)
    }
}
