//
//  Login.swift
//  Kai
//
//  Created by Shehara Jayasooriya on 2024-03-24.
//

import SwiftUI

struct Login: View {
    
    @ObservedObject var viewModel: LoginViewModel
    @State private var username = ""
    @State private var password = ""
    
    
    var body: some View {
        VStack {
            
            
            //Spacer()

            Text("LOGIN")
                .font(.title)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding()
                .autocapitalization(.allCharacters)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer().frame(height: 20)
            
            TextField("Username", text: $viewModel.username)
                .padding()
                .background(Color.gray.opacity(0.2))
                .frame(width: 230)
                .cornerRadius(12)
                
            Spacer().frame(height: 20)
            
            SecureField("Password", text: $viewModel.password)
                           .padding()
                           .background(Color.gray.opacity(0.2))
                           .frame(width: 230)
                           
                           .cornerRadius(12)
                           

            Spacer().frame(height: 28)
            
            Button(action: {
                      
                self.viewModel.login()
                   }) {
                       Text("SIGN IN")
                           .padding(20)
                           .background(Color.black)
                           .foregroundColor(.white)
                           .cornerRadius(19)
                           .disabled(viewModel.isLoading)
                       
                   }
            if viewModel.isLoading {
                            ProgressView()
                        }
            if !viewModel.errorMessage.isEmpty {
                            Text(viewModel.errorMessage)
                                .foregroundColor(.red)
                                .padding()
                        }
            
        }
        
         //.padding(.vertical)
    
        
    }
           
}


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login(viewModel: LoginViewModel())
    }
}


