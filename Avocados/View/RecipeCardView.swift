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
                
                HStack {
                    ForEach(1...recipe.rating, id:\.self){star in
                        Image(systemName: "star.fill")
                            .font(.body)
                        .foregroundColor(.yellow)
                    }
                }
                
                HStack(alignment: .center,spacing: 12) {
                    HStack(alignment: .center,spacing: 2) {
                        Image(systemName: "person.2")
                        Text("Serves: \(recipe.serves)")
                    }
                    
                    HStack(alignment: .center,spacing: 2) {
                        Image(systemName: "clock")
                        Text("Prep: \(recipe.preparation)")
                    }
                    
                    HStack(alignment: .center,spacing: 2) {
                        Image(systemName: "flame")
                        Text("Cooking: \(recipe.cooking)")
                    }
                }
                .font(.footnote)
                .foregroundColor(Color.gray)
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
