//
//  ContentView.swift
//  VisionSwiftUIBasics
//
//  Created by Massimo Montanaro on 15/11/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContainerView: View {

    var body: some View {
        VStack{
            Text("Pick an item")
                .font(.system(size: 80))
                .bold()
            ScrollView(.horizontal){
                HStack(spacing: 20){
                    ItemThumbView(iconName: "Vision", iconImageName: "vision.pro")
                    ItemThumbView(iconName: "Sun", iconImageName: "sun.max")
                }
                
            }
            .padding(50)
        }
        
        
    }
}

#Preview(windowStyle: .automatic) {
    ContainerView()
}

struct ItemThumbView: View {
    
    @Environment(\.openWindow) private var openWindow
    
    var iconName: String
    var iconImageName: String
    var body: some View {
        VStack{
            Image(systemName: iconImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .symbolEffect(.pulse)
                .bold()
                .padding(10)
            Button("Add \(iconName)") {
                openWindow(id: "Window \(iconName)")
            }
            .font(.system(size: 30))
            .padding(5)
        }
    }
}
