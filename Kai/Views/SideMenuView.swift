//
//  SideMenuView.swift
//  Kai
//
//  Created by Shehara Jayasooriya on 2024-03-25.
//

import SwiftUI

struct SideMenuView: View {
    
    //@ObservedObject var viewModel: SideMenuViewModel
    @Binding var isShowing: Bool
    
    var body: some View {
        
        ZStack{
            if isShowing{
                Rectangle().opacity(0.2).ignoresSafeArea().onTapGesture {
                    isShowing.toggle()}
                    
                    HStack{
                        
                        
                        VStack(alignment:.leading, spacing: 32){
                            
                            Spacer()
                        
                                
                                Text ("Women").font(.system(size: 27)).padding(23)
                                
                                Text ("Men").font(.system(size: 27)).padding(23)
                                
                                Text("Accessories").font(.system(size: 27)).padding(23)
                            Spacer()
                                                        
                        }
                        .padding()
                        .frame(width:270,alignment: .leading)
                        .background(.white)
                        Spacer()
                        
                    }
                
            }
            
        }
        
        .transition(.move(edge: .leading))
        .animation(.easeInOut, value: isShowing)
        
        
    }
    
}
        
  
        
        
        
        
        



#Preview {
    
    SideMenuView(isShowing: .constant(true))
    //SideMenuView(viewModel: SideMenuView, isShowing: false)
    
}



