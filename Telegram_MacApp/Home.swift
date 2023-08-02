//
//  Home.swift
//  Telegram_MacApp
//
//  Created by ipeerless on 31/07/2023.
//

import SwiftUI

struct Home: View {
    @State private var homeData = HomeViewModel()
    
    var body: some View {
      let screen = NSScreen.main?.visibleFrame
        
        NavigationView {
            HStack(spacing: 0) {
                VStack {
                    TabButton(image: "message", title: "All Chats", selectedTab: $homeData.selectedTab)
                    TabButton(image: "person", title: "Person1", selectedTab: $homeData.selectedTab)
                    TabButton(image: "bubble.middle.bottom", title: "Bots", selectedTab: $homeData.selectedTab)
                    TabButton(image: "slider.horizontal.3", title: "Edit", selectedTab: $homeData.selectedTab)
                    TabButton(image: "gear", title: "Settings", selectedTab: $homeData.selectedTab)
                    Spacer()
                }
                .padding()
                .padding(.top, 35)
                .background(BlurView())
                
                ZStack {
                    switch homeData.selectedTab {
                    case "All Chats":NavigationView{ AllChatsView()}
                    case "Personal": Text("Personal")
                    case "Bots": Text("Bots")
                    case "Edit": Text("Edit")
                    case "Settings": Text("Settings")
                    default : Text("")
                        
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
            .ignoresSafeArea(.all, edges: .all)
            .frame(width: screen?.width ?? 800 / 1.2, height: (screen?.height ?? 600) - 60)
        .environmentObject(homeData)
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
