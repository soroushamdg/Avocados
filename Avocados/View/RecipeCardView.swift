//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Soro on 2022-10-24.
//

import SwiftUI

struct RecipeCardView: View {
    
    var recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading,spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack{
                            Image(systemName: "bookmark")
                            .font(.title.weight(.light))
                            .foregroundColor(Color.white)
                            .imageScale(.small)
                        .shadow(color: Color("ColorBlackTransparentLight"),radius: 2)
                        .padding(.trailing,20)
                        .padding(.top,22)
                            Spacer()
                        }
                    }
                )
            VStack(alignment: .leading,spacing: 12) {
                Text(recipe.title)
                    .font(.system(.title,design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                Text(recipe.headline)
                    .font(.system(.body,design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
               RecipeRatingView(recipe: recipe)
                
                RecipeCookingView(recipe: recipe)
            }
            .padding()
            .padding(.bottom,12)
        }
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"),radius: 8)
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipeData[0])
            .previewLayout(.sizeThatFits)
    }
}
