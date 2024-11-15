//
//  VisionSwiftUIBasicsApp.swift
//  VisionSwiftUIBasics
//
//  Created by Massimo Montanaro on 15/11/24.
//

import SwiftUI

@main
struct VisionSwiftUIBasicsApp: App {
    var body: some Scene {
        WindowGroup {
            ContainerView()
        }
        
        WindowGroup(id: "Window Vision") {
            ItemContentView(color: .blue, text: "Vision")
        }
        .defaultSize(CGSize(width: 400, height: 320))
        
        WindowGroup(id: "Window Sun") {
            ItemContentView(color: .orange, text: "Sun")
        }
        .defaultSize(CGSize(width: 400, height: 320))
    }
}
