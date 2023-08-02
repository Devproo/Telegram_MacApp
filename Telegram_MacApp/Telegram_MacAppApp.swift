//
//  Telegram_MacAppApp.swift
//  Telegram_MacApp
//
//  Created by ipeerless on 31/07/2023.
//

import SwiftUI

@main
struct Telegram_MacAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}

extension NSTextField {
    open override var focusRingType: NSFocusRingType {
        get {
            .none
        }
        set {}
    }
}
