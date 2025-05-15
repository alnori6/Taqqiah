//
//  PrimaryButton.swift
//  Taqqiah
//
//  Created by Noori on 2025-05-15.
//


//
//  UIElement.swift
//  Matlab
//
//  Created by Noori on 13/04/2025.
//

import SwiftUI

/// Primary button style with a pressed effect.
struct PrimaryButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Color("blue_light")
            configuration.label
                .font(.custom("bahijTheSansArabic-Bold", size: 24))
                .foregroundColor(Color("blue_dark"))
        }
        .frame(height: 59)
        .frame(width: 237)
        .cornerRadius(51)
        .shadow(color: Color("blue_dark"), radius: 0, x: 0, y: 7)
        .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
        .opacity(configuration.isPressed ? 0.8 : 1.0)
        .animation(.easeInOut, value: configuration.isPressed)
    }
}


/// Primary button style with a pressed effect.
struct PrimaryButton2: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Color("violet_pink")
            configuration.label
                .font(.custom("bahijTheSansArabic-Bold", size: 24))
                .foregroundColor(Color.accentColor)
        }
        .frame(height: 59)
        .frame(width: 168)
        .cornerRadius(51)
        .shadow(color: Color("violet_dark"), radius: 0, x: 0, y: 7)
        .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
        .opacity(configuration.isPressed ? 0.8 : 1.0)
        .animation(.easeInOut, value: configuration.isPressed)
    }
}


/// Primary button style with a pressed effect.
struct SecondButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Color("violet_pink")
            HStack(){
                Image("game-center_logo")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color.white)
                configuration.label
                    .font(.custom("bahijTheSansArabic-Bold", size: 20))
                    .foregroundColor(Color.white)
            }
            
        }
        .frame(height: 59)
        .frame(width: 183)
        .cornerRadius(51)
        .shadow(color: Color("violet_dark"), radius: 0, x: 0, y: 7)
        .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
        .opacity(configuration.isPressed ? 0.8 : 1.0)
        .animation(.easeInOut, value: configuration.isPressed)
    }
}




struct ButtonsUI: View {
    var body: some View {
        
        HStack(){
            Button("إبدأ اللعب") {
            }.buttonStyle(PrimaryButton()).padding()
            
            Button("خاص") {
            }.buttonStyle(PrimaryButton2()).padding()
            
            Button("اعزم") {
            }.buttonStyle(PrimaryButton2()).padding()
            
            
        }
        
        
        Button("تسجيل الدخول") {
        }.buttonStyle(SecondButton()).padding()
        
        
        
    }
}



#Preview {
    ButtonsUI()
}
