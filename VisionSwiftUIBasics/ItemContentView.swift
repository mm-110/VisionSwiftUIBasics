//
//  ItemContentView.swift
//  VisionSwiftUIBasics
//
//  Created by Massimo Montanaro on 15/11/24.
//

import SwiftUI

struct ItemContentView: View {
    
    var color: Color
    var text: String
    
    var body: some View {
        ZStack(spacing: 50){
            Circle()
                .foregroundColor(color)
            Text(text)
                .font(.extraLargeTitle)
        }
        .padding(20)
    }
}

#Preview {
    ItemContentView(color: Color.blue, text: "Hello")
}
