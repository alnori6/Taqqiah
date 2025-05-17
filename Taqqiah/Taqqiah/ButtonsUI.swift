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
struct LoginButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Color("blue_dark")
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
        .frame(width: 200)
        .cornerRadius(51)
        .shadow(color: Color("blue_deep"), radius: 0, x: 0, y: 7)
        .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
        .opacity(configuration.isPressed ? 0.8 : 1.0)
        .animation(.easeInOut, value: configuration.isPressed)
    }
}


/// Primary button style with a pressed effect.
struct LogoutButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Color("red_light")
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
        .frame(width: 200)
        .cornerRadius(51)
        .shadow(color: Color("red_dark"), radius: 0, x: 0, y: 7)
        .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
        .opacity(configuration.isPressed ? 0.8 : 1.0)
        .animation(.easeInOut, value: configuration.isPressed)
    }
}



/// Primary button style with a pressed effect.
struct runButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Color("blue_dark")
            configuration.label
                .font(.custom("bahijTheSansArabic-Bold", size: 20))
                .foregroundColor(Color.white)
            
        }
        .frame(height: 69)
        .frame(width: 69)
        .cornerRadius(51)
        // Inner Stroke (Inset)
       .overlay(
           RoundedRectangle(cornerRadius: 51)
            .stroke(Color.white, lineWidth: 1.5)
            .padding(-4)
       )
       // Outer Stroke (Outset, larger padding to push it outside)
       .overlay(
           RoundedRectangle(cornerRadius: 55) // slightly larger radius
               .stroke(Color.white, lineWidth: 1)
               .padding(-9) // negative padding expands outward
       )
        .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
        .opacity(configuration.isPressed ? 0.8 : 1.0)
        .animation(.easeInOut, value: configuration.isPressed)
    }
}



/// Primary button style with a pressed effect.
struct soundButton: ButtonStyle {
    @State private var isMuted = false
    
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
                   isMuted.toggle()
        }) {
            ZStack {
                Color("blue_dark")
                Image(systemName: isMuted ? "speaker.slash.fill" : "speaker.wave.2.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .foregroundColor(Color("off_white"))
            }
            .frame(height: 60)
            .frame(width: 60)
            .cornerRadius(51)
            .shadow(color: Color("blue_deep"), radius: 0, x: 0, y: 7)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .opacity(configuration.isPressed ? 0.8 : 1.0)
            .animation(.easeInOut, value: configuration.isPressed)
        }
    }
}


/// Primary button style with a pressed effect.
struct hapticButton: ButtonStyle {
    @State private var isMuted = false
    
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
                isMuted.toggle()
        }) {
            ZStack {
                Color("blue_dark")
                Image(systemName: isMuted ? "iphone.gen3.slash" : "iphone.gen3.radiowaves.left.and.right")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 30)
                    .foregroundColor(Color("off_white"))
            }
            .frame(height: 60)
            .frame(width: 60)
            .cornerRadius(51)
            .shadow(color: Color("blue_deep"), radius: 0, x: 0, y: 7)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .opacity(configuration.isPressed ? 0.8 : 1.0)
            .animation(.easeInOut, value: configuration.isPressed)
        }
    }
}



/// Primary button style with a pressed effect.
struct dialog1Button: ButtonStyle {
    @State private var isMuted = false
    
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
                isMuted.toggle()
        }) {
            ZStack {
                Color.accentColor
                
                HStack(){
                    Image("stand")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.white)
                    
                    configuration.label
                        .font(.custom("bahijTheSansArabic-Bold", size: 20))
                        .foregroundColor(Color.white)
                }
            }
            .frame(height: 60)
            .frame(width: 160)
            .cornerRadius(51)
            .shadow(color: Color("violet_pink"), radius: 0, x: 0, y: 7)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .opacity(configuration.isPressed ? 0.8 : 1.0)
            .animation(.easeInOut, value: configuration.isPressed)
        }
    }
}



/// Primary button style with a pressed effect.
struct dialog2Button: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Color("red_light")
            HStack(){
                Image(systemName: "rectangle.portrait.and.arrow.right")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color.white)
                configuration.label
                    .font(.custom("bahijTheSansArabic-Bold", size: 20))
                    .foregroundColor(Color.white)
            }
            
        }
        .frame(height: 59)
        .frame(width: 200)
        .cornerRadius(51)
        .shadow(color: Color("red_dark"), radius: 0, x: 0, y: 7)
        .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
        .opacity(configuration.isPressed ? 0.8 : 1.0)
        .animation(.easeInOut, value: configuration.isPressed)
    }
}



struct ButtonsUI: View {
    var body: some View {
        
        VStack(){
            HStack(){
                Button("إبدأ اللعب") {
                }.buttonStyle(PrimaryButton()).padding()
                
                Button("خاص") {
                }.buttonStyle(PrimaryButton2()).padding()
                
                Button("اعزم") {
                }.buttonStyle(PrimaryButton2()).padding()
                
                
            }
            
            HStack(){
                
                Button("تسجيل الخروج") {
                }.buttonStyle(LoginButton()).padding()
                
                Button("تسجيل الدخول") {
                }.buttonStyle(LogoutButton()).padding()
                
            }
            
            HStack(){
                Button("اركض") {
                }.buttonStyle(runButton()).padding()
                
                Button("") {
                }.buttonStyle(soundButton()).padding()
                
                Button("") {
                }.buttonStyle(hapticButton()).padding()
                
                
                Button("تابع اللعبة") {
                }.buttonStyle(dialog1Button()).padding()
                
                Button("اخرج من اللعبه") {
                }.buttonStyle(dialog2Button()).padding()
            }
            
           
            
            HStack(){
              
                
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.accentColor)
        
    }
}



#Preview {
    ButtonsUI()
}
