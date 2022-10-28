//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Soro on 2022-10-19.
//

import SwiftUI

struct RipeningStagesView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            VStack{
                Spacer()
                HStack(alignment: .center,spacing: 25) {
                    ForEach(ripeningData) { item in
                        
                        RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal,25)
                
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
