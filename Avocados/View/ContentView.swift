//
//  ContentView.swift
//  Avocados
//
//  Created by Soro on 2022-10-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            
            VStack(alignment: .center,spacing: 20) {
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(alignment: .top,spacing: 0) {
                        ForEach(headersData) { header in
                            HeaderView(header: header)
                        }
                    }
                }
                
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(alignment: .top,spacing: 60) {
                        ForEach(factsData) { item in
                            FactsView(fact: item)
                        }
                    }
                    .padding(.vertical)
                    .padding(.leading,60)
                    .padding(.trailing,20)
                }
                
                
                VStack(alignment: .center,spacing: 20){
                    Text("All about Avocados")
                        .modifier(TitleModifier())
                        .fontWeight(.bold)
                        .padding(8)
                    
                    Text("Everything you wanted to know about Avocados")
                        .font(.system(.body,design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom,85)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(.title,design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
