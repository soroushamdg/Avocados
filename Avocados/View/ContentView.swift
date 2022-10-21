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
                
                
                VStack(alignment: .center,spacing: 20){
                    Text("All about Avocados")
                        .font(.system(.title,design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
