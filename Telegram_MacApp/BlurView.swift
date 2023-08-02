//
//  BlurView.swift
//  Telegram_MacApp
//
//  Created by ipeerless on 02/08/2023.
//

import SwiftUI

struct BlurView: NSViewRepresentable {
    func updateNSView(_ nsView: NSViewType, context: Context) {
        
    }
    
    func makeNSView(context: Context) -> some NSVisualEffectView {
        
        let view = NSVisualEffectView()
        view.blendingMode = .behindWindow
        return view
        
    }
}
