//
//  ContentView.swift
//  FooBar
//
//  Created by Aiden Baker on 8/26/25.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    @State private var display = "0"
    @State private var color = Color.black
    
    var body: some View {
        ZStack {
            color.ignoresSafeArea()
            Text(display)
                .font(.system(size: 128))
                .multilineTextAlignment(.center)
                .preferredColorScheme(.dark)
                .onTapGesture {
                    counter += 1
                    if counter % 3 == 0 && counter % 5 == 0 {
                        display = "Foo Bar"
                        color = .red
                    } else if counter % 3 == 0 {
                        display = "Foo"
                        color = .green
                    } else if counter % 5 == 0 {
                        display = "Bar"
                        color = .yellow
                    } else {
                        display = String(counter)
                        color = .black
                    }
                }
                .onLongPressGesture {
                    counter = 0
                    display = "0"
                    color = .black
                }
        }
    }
}

#Preview {
    ContentView()
}
