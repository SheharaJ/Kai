//
//  HomeView.swift
//  Kai
//
//  Created by Shehara Jayasooriya on 2024-03-28.
//



import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: SideMenuViewModel
    @State private var isSideMenuOpen = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
        
    
    
    var body: some View {
        
      
        ZStack{
            
            Image("WhatsApp Image 2024-03-25 at 23.06.52")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack{
                
                HStack{
                   
                    Button(action: {
                        
                        withAnimation{self.isSideMenuOpen.toggle()}
                        //viewModel.toggleSideMenu()
                        //viewModel.buttonClicked()
                        
                    })
                        {
                           Image(systemName:"line.horizontal.3")
                            .padding(25)
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                         }
                    
                    Spacer()
                    
                    Button(action: {
                        print("Cart button tapped")})
                    {
                        Image(systemName:"cart")
                            .padding(25)
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                    }
                        }
                Spacer()
                
                
                   }
                        //SideMenuView(isOpen: $isSideMenuOpen)
                        Spacer()
                      }
                    //.navigationBarTitle("Home")
                        Spacer()
                    
                }
                
                
            }
            
            
            
          







struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: SideMenuViewModel())
    }
}


//
//
//#Preview {
//    HomeView()
//}
