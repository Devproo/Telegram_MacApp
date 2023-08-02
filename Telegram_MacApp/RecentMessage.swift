//
//  RecentMessage.swift
//  Telegram_MacApp
//
//  Created by ipeerless on 02/08/2023.
//

import SwiftUI

struct RecentMessage:Identifiable {
    var id = UUID().uuidString
    var lastMsg: String
    var lastMsgTime: String
    var pendingMsg: String
    var userName: String
    var userImage: String
    var allMsgs: [Message]
}

var recentMsgs: [RecentMessage] = [
    RecentMessage(
        lastMsg: "Hello there!",
        lastMsgTime: "2023-08-02 10:30",
        pendingMsg: "See you later!",
        userName: "John Doe",
        userImage: "user_avatar1",
        allMsgs: Eachmsg.shuffled()
    ),
    RecentMessage(
        lastMsg: "Hey!",
        lastMsgTime: "2023-08-02 11:15",
        pendingMsg: "What's up?",
        userName: "Jane Smith",
        userImage: "user_avatar2",
        allMsgs: Eachmsg.shuffled()
    ),
    // Add more RecentMessage instances here
    RecentMessage(
        lastMsg: "Good morning!",
        lastMsgTime: "2023-08-02 09:00",
        pendingMsg: "Have a great day!",
        userName: "Alice Johnson",
        userImage: "user_avatar3",
        allMsgs: Eachmsg.shuffled()
    ),
   
        RecentMessage(
            lastMsg: "Hi everyone!",
            lastMsgTime: "2023-08-02 13:45",
            pendingMsg: "Let's catch up later.",
            userName: "Emily Roberts",
            userImage: "user_avatar4",
            allMsgs: Eachmsg.shuffled()
        ),
        RecentMessage(
            lastMsg: "Did you hear the news?",
            lastMsgTime: "2023-08-02 14:20",
            pendingMsg: "It's crazy!",
            userName: "Sarah Thompson",
            userImage: "user_avatar5",
            allMsgs: Eachmsg.shuffled()
        ),
        RecentMessage(
            lastMsg: "What's your plan for the weekend?",
            lastMsgTime: "2023-08-02 12:05",
            pendingMsg: "I might go hiking.",
            userName: "Anna Lee",
            userImage: "user_avatar6",
            allMsgs: Eachmsg.shuffled()
        )
    

    
]
