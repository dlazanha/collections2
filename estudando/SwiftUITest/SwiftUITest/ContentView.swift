//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Diego Araujo Lazanha on 04/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack (alignment: .center, spacing: 10) {
            Text("Hello, world!")
                .font(.title)
                .foregroundColor(.blue)
            Text("Hello, world! Hello, world! Hello, world!Hello, world!")
                .lineLimit(nil)
            foregroundColor(.red)
                .font(.body)
                .multilineTextAlignment(.center)
            Image("ES")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .clipShape(Circle())
                .shadow(color: .orange, radius: 10, x:3, y: 3)
                .overlay(Circle().stroke(Color.black, lineWidth: 2))
        }.padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
