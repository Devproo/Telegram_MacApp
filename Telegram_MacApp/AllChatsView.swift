//
//  AllChatsView.swift
//  Telegram_MacApp
//
//  Created by ipeerless on 02/08/2023.
//

import SwiftUI

struct AllChatsView: View {
    @EnvironmentObject var homeData: HomeViewModel
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .font(.title2)
                        .foregroundColor(.white)
                }
                .buttonStyle(PlainButtonStyle())
                
            }
            .padding(.horizontal)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                TextField("Search", text:$homeData.search)
                    .textFieldStyle(PlainTextFieldStyle())
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
            .background(Color.primary.opacity(0.15))
            .padding()
            
            List(selection:
                    $homeData.selectedrecentMsg) {
                ForEach(homeData.msgs) { message in
                    NavigationLink {
                        DetailView( user: message)
                    } label: {
                        RecentCardView(recentMsg: message)
                    }

                 
                    
                }
            }
                    .listStyle(SidebarListStyle())
        }
    }
}

struct AllChatsView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
