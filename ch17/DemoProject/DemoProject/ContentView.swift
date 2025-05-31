//
//  ContentView.swift
//  DemoProject
//
//  Created by Demian Yoo on 5/29/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .foregroundColor(Color.red)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            ContentView()
                .previewDevice("iPhone SE (2nd generation)")
                .previewDisplayName("iPhone SE")
            ContentView()
                .previewDevice("iPhone 13")
                .previewDisplayName("iPhone 13")
            ContentView()
                .preferredColorScheme(.dark)
                .previewDisplayName("Dark Mode")
//            ContentView(sampleData: mySampleData)÷
            
        }
    }
}
