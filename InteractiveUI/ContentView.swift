//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    
    var body: some View {
        VStack {
            Text (textTitle)
                .font(.title)
                .fontWeight(.semibold)
            TextField("Type name here", text: $name)
                .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.gray, width: 1)
            Button("Submit Name") {
                textTitle = "Welcome, \(name)!"
            }//closes button
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.teal)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
