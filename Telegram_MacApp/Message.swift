//
//  Message.swift
//  Telegram_MacApp
//
//  Created by ipeerless on 02/08/2023.
//

import SwiftUI

struct Message: Identifiable, Equatable {
    var id = UUID().uuidString
    var message: String
    var myMessage: Bool
}

var Eachmsg = [
  Message(message: "My Album Is Going To Be Released", myMessage: false),
  Message(message: "I'm so excited about the upcoming release!", myMessage: true),
  Message(message: "The album will be available on all major platforms.", myMessage: false),
  Message(message: "Thank you all for your continuous support!", myMessage: false),
  Message(message: "I can't wait for you all to hear it!", myMessage: true),
  Message(message: "We've put a lot of effort into this project.", myMessage: true),
  Message(message: "Mark your calendars for the release date!", myMessage: false),
  Message(message: "Stay tuned for more updates and sneak peeks.", myMessage: false),
  Message(message: "I hope you enjoy listening to it as much as we enjoyed creating it.", myMessage: true),
  Message(message: "Let's make this album a big success together!", myMessage: true),
  // Add more messages here...
];
