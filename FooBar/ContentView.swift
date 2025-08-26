//
//  ContentView.swift
//  FooBar
//
//  Created by Aiden Baker on 8/26/25.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    var body: some View {
        VStack {
            Text("\(counter)")
                .font(.system(size: 128))
                .multilineTextAlignment(.center)
                .preferredColorScheme(.dark)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
