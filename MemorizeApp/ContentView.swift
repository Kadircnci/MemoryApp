//
//  ContentView.swift
//  MemorizeApp
//
//  Created by Kadir Çanakcı on 9.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView(isFaceUp: true)
            CardView()
        }
        
        
        .foregroundStyle(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp : Bool = false
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.white)
                RoundedRectangle(cornerRadius: 12)
                    .stroke(lineWidth: 2)
                Text("👻").font(.largeTitle)
            }else {
                RoundedRectangle(cornerRadius: 12)
            }}
               
    )}
}

#Preview {
    ContentView()
}
