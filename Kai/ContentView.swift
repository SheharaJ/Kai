//
//  ContentView.swift
//  Kai
//
//  Created by Shehara Jayasooriya on 2024-03-22.
//

import SwiftUI

struct ContentView: View {
    
    
    @StateObject var viewModel = SideMenuViewModel()
    @State private var isMenuOpen = false
    @State private var selectedMenuItem = ""
    //@ObservedObject var viewModel = HomeViewModel()
    @StateObject var viewModels = LoginViewModel()
    @State private var showMenu = false
    
    
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                
                Image("WhatsApp Image 2024-03-25 at 23.06.52")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .edgesIgnoringSafeArea(.all)
                
                
                
                VStack{
                    SideMenuView(isShowing: $showMenu)
                }
                .toolbar(showMenu ? .hidden: .visible, for: .navigationBar)
                .toolbar{
                    ToolbarItem(placement: .topBarLeading){
                        
                        Button(action: {
                            showMenu.toggle()
                        }, label:{
                            Image(systemName:"line.horizontal.3")
                                .foregroundColor(.white)
                                //.font(.title)
                                .padding(25)
                        })
                        
                    }
                }
                
                
            }
            
        }
    }
}
                

        
        
        
        


#Preview {
    ContentView()
}
