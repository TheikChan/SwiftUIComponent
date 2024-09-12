//
//  ContentView.swift
//  SwiftUIComponent
//
//  Created by Theik Chan on 12/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    
    var body: some View {
        VStack {
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            let markdownString = try! AttributedString(markdown: "Sign up to our Newsletter and get **30%** off!")
            
            Text(markdownString)
                .font(.system(size: 24,weight: .light, design: .serif))
                .italic().lineLimit(1)
            
            
            TextField("Enter your name", text: $name,
                      onEditingChanged: { status in
                    print(status)
                })
                .onChange(of: name, { oldValue, newValue in
                    print(newValue)
                })
                .onSubmit {
                    print("submitted")
                }
                .padding()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
