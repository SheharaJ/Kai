//
//  LoginViewModel.swift
//  Kai
//
//  Created by Shehara Jayasooriya on 2024-03-25.
//

import Foundation
class LoginViewModel: ObservableObject {
    
    @Published var username : String = ""
    @Published var password : String = ""
    @Published var isLoading: Bool = false
    @Published var isLoggedIn : Bool = false
    @Published var errorMessage: String = ""
    
    
    //private var cancellableSet: Set<AnyCancellable> = []
    
    func login() {
        if !username.isEmpty && !password.isEmpty {
            isLoggedIn = true
            
        } 
        
        
        else {
            isLoggedIn = false
        }
        
        
        //    @Published var user = User(username: "", password: "", isAuthenticated: false)
        //
        //    func login() {
        //
        //
        //        if !user.username.isEmpty && !user.password.isEmpty {
        //            user.isAuthenticated = true
        //        } else {
        //            user.isAuthenticated = false
        //        }
        
    }
}
