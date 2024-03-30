//
//  SideMenuViewModel.swift
//  Kai
//
//  Created by Shehara Jayasooriya on 2024-03-25.
//

import Foundation

class SideMenuViewModel: ObservableObject {
    
    
    @Published var isShowingSideMenu = false
   
   func toggleSideMenu() {
        isShowingSideMenu.toggle()
   }
   
    
    
//    let menuItems: [MenuItem] = [
//            MenuItem(title: "Home", destination: AnyView(Text("Home View"))),
//            MenuItem(title: "Settings", destination: AnyView(Text("Settings View"))),]
            

//    
//    
//    @Published var menuItems: [MenuItem] = [
//            MenuItem(title: "Home", icon: "house"),
//           MenuItem(title: "Profile", icon: "person"),
//            MenuItem(title: "Settings", icon: "gear")
//       ]
    
    
}
