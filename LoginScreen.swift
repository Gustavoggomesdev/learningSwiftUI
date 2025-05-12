//
//  LoginScreen.swift
//  TEST DRIVE
//
//  Created by Usuario on 06/05/25.
//

import SwiftUI
struct LoginScreenView: View {
    @State private var email: String = ""
    @State private var senha: String = ""
    var body: some View {
        NavigationStack {
            
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.purplescreen, Color.pinkscreen]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                VStack {
                    Text ("Mindflow")
                        .font(.system(size: 40, weight: .bold, design: .default))
                        .foregroundStyle(.white)
                    Image(.loginimg)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 270, height: 270)
                    
                    Text ("Login")
                        .font(.system(size: 35, weight: .bold, design: .default))
                        .foregroundStyle(.white)
                        .padding(-10)
                    
                    VStack (alignment: .leading, spacing: 10){
                        Text ("E-mail")
                            .foregroundStyle(.white)
                        TextField("Digite seu e-mail", text: $email)
                            .frame(width: 300, height: 20)
                            .keyboardType(.emailAddress)
                            .textContentType(.emailAddress)
                            .autocapitalization(.none)
                            .autocorrectionDisabled(true)
                            .padding(20)
                            .background(.white)
                            .cornerRadius(50)
                        Text ("Senha")
                            .foregroundColor(.white)
                        SecureField("Digite sua senha", text: $senha)
                            .frame(width: 300, height: 20)
                            .textContentType(.password)
                            .autocapitalization(.none)
                            .autocorrectionDisabled(true)
                            .padding(20)
                            .background(Color.white)
                            .cornerRadius(50)

                    }
                
                  
                    
                    
                    
                    
                    NavigationLink(destination: SwiftUIView()
                        .transition(.opacity)) {
                            Text("Entrar")
                                .frame(width: 340, height: 60)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .font(.system(size: 35, weight: .bold))
                                .cornerRadius(50)
                            
                        }
                        .padding()
                        .buttonStyle(PlainButtonStyle())
                    Text ("Ou")
                        .font(.system(size: 16, weight: .bold, design: .default))
                        .foregroundStyle(.white)
                        .padding(-5)
                    NavigationLink(destination: SingInView()
                        .transition(.opacity)) {
                            Text("Cadastre-se")
                                .frame(width: 110, height: 60)
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .bold))
                                .padding(-5)
                        }
                    
                    
                    
                }
                
            }
            
        }
    }
}

    
//#Preview {
    //LoginScreenView()
//}

