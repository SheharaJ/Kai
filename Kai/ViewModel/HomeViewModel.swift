//
//  HomeViewModel.swift
//  Kai
//
//  Created by Shehara Jayasooriya on 2024-03-26.
//

import Foundation
import SwiftUI


class HomeViewModel: ObservableObject {
    
    @Published var isShowingSideMenu = false
    
    @Published var backgroundImage: BackgroundImage = BackgroundImage(name: "WhatsApp Image 2024-03-25 at 23.06.52")
    
    func toggleSideMenu() {
         isShowingSideMenu.toggle()
    }
    
    private var images: [BackgroundImage] = [
            BackgroundImage(name: "WhatsApp Image 2024-03-25 at 23.06.52"),
            BackgroundImage(name: "WhatsApp Image 2024-03-26 at 19.59.05"),
            // Add more background images as needed
        ]
        
    private var currentIndex: Int = 0

    func changeBackgroundImage() {
        withAnimation {
            currentIndex = (currentIndex + 1) % images.count
            backgroundImage = images[currentIndex]
        }
    }
}
