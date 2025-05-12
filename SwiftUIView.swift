//
//  SwiftUIView.swift
//  TEST DRIVE
//
//  Created by Usuario on 29/04/25.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.purplescreen, .pinkscreen]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                HStack {
                    Image(.profile)
                        .resizable()
                        .frame(width: 75, height: 55)
                        .clipShape(Circle())
                    Text("Olá, Ana")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundStyle(.white)
                        
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Mood()
                  
                }
                Spacer()
                VStack {
                    Button {
                        print("clicado")
                    } label: {
                        Text("Atualizar")
                            .frame(width: 250, height: 50)
                            .background(.blue)
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .cornerRadius(15)
                    }
                }
                    
            }
        }
    }
}

//#Preview {
    //SwiftUIView()
//}

struct Mood: View {
    @State private var mood: String = "Neutro"
    @State private var image: String = "happy"
    var body: some View {
        VStack {
            Text("Como está se sentindo hoje?")

                .font(.system(size: 30, weight: .bold, design: .default))
                .foregroundStyle(.white)
                .padding()
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 260, height: 260)
            
            Text(mood)
                .font(.system(size: 25, weight: .bold, design: .default))
                .foregroundStyle(.white)
            HStack {
                SubMood(mood: "Feliz", image: "minihappy", selectedMood: $mood, selectedImage: $image)
                SubMood(mood: "Triste", image: "minisad", selectedMood: $mood, selectedImage: $image)
                SubMood(mood: "Cansada", image: "minitired", selectedMood: $mood, selectedImage: $image)
                SubMood(mood: "Ansiosa", image: "miniansiety", selectedMood: $mood, selectedImage: $image)
                SubMood(mood: "Raiva", image: "miniangry", selectedMood: $mood, selectedImage: $image)
                
            }
            Button {
                print("clicado")
            } label: {
                Text("Selecionar motivo")
                    .frame(width: 300, height: 50)
                    .background(.white.opacity(0.15))
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .cornerRadius(10)
                    .padding()
                    
                
            }
            Spacer()
            
        }
    }
}

struct SubMood: View {
    var mood: String
    var image: String
    @Binding var selectedMood: String
    @Binding var selectedImage: String
    
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut(duration: 0.3)) {
                selectedMood = mood
                if mood.lowercased() == "feliz" {
                    selectedImage = "happy"
                } else if mood.lowercased() == "triste" {
                    selectedImage = "sad"
                } else if mood.lowercased() == "ansiosa" {
                    selectedImage = "ansiety"
                } else if mood.lowercased() == "cansada" {
                    selectedImage = "tired"
                } else if mood.lowercased() == "raiva" {
                    selectedImage = "angry"
                }
            }
        }) {
            
            VStack {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                Text(mood)
                    .font(.system(size: 12, weight: .bold, design: .default))
                    .foregroundStyle(.white)
            }
        }
        
    }
}
