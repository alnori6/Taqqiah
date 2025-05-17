//
//  mainView.swift
//  Taqqiah
//
//  Created by Noori on 2025-05-13.
//

import SwiftUI

struct mainView: View {
    var body: some View {
        ZStack(){
           
            VStack(){
                
                Text("السلام عليكم")
                    .font(.custom("bahijTheSansArabic-Bold", size: 40))
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.accentColor)
            
            Image("land")
                .resizable()
                .scaledToFit()
                .edgesIgnoringSafeArea(.all)
                .offset(x: 0, y: 85)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    mainView()
}
