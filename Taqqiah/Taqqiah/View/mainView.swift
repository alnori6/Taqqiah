//
//  mainView.swift
//  Taqqiah
//
//  Created by Noori on 2025-05-13.
//

import SwiftUI

struct mainView: View {
    var body: some View {
        
        VStack(){
            
            Text("السلام عليكم")
                .font(.custom("bahijTheSansArabic-Bold", size: 40))
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.accentColor)
//        Text("Just to confirm that everything is working")
//            .font(.custom("Bahij TheSansArabic", size: 20))
//        
//        
//        Text("السلام عليكم")
//            .font(.custom("bahijTheSansArabic-Plain", size: 40))
//        
//        Text("خط بهيج")
//            .font(.custom("BahijTheSansArabic-Bold", size: 40))
    }
}

#Preview {
    mainView()
}
