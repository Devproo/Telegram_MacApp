//
//  HomeViewModel.swift
//  Telegram_MacApp
//
//  Created by ipeerless on 31/07/2023.
//

import SwiftUI

class  HomeViewModel: ObservableObject {
    @Published var selectedTab = "All Chats"
    @Published var msgs : [RecentMessage] = recentMsgs
    @Published var selectedrecentMsg: String? = recentMsgs.first?.id
    @Published var search = ""
    @Published var message = ""
    @Published var isExpanded = false
    @Published var pickedTab = "Media"
    
    func sendMessage(user: RecentMessage) {
        if message != ""  {
            let index = msgs.firstIndex { (user) in
                return currentUser.id == user.id
            } ?? -1
            
            if index != -1 {msgs[index].allMsgs.append(Message(message: message, myMessage: true))
                message = ""
            }
        }
    }
}
