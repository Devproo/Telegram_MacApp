//
//  RecentCardView.swift
//  Telegram_MacApp
//
//  Created by ipeerless on 02/08/2023.
//

import SwiftUI

struct RecentCardView: View {
    var recentMsg: RecentMessage
    var body: some View {
        HStack {
            Image(recentMsg.userImage)
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            VStack(spacing: 4) {
                HStack {
                    VStackLayout(alignment: .leading, spacing: 4) {
                        Text(recentMsg.userName)
                            .fontWeight(.bold)
                        Text(recentMsg.lastMsg)
                            .font(.caption)
                    }
                    Spacer(minLength: 10)
                    VStack {
                        Text(recentMsg.lastMsgTime)
                            .font(.caption)
                        Text(recentMsg.pendingMsg)
                            .font(.caption)
                            .padding(5)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .clipShape(Circle())
                    }
                }
                .listStyle(SidebarListStyle())
            }
            
        }
    }
}

struct RecentCardView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
