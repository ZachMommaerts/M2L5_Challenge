//
//  ContentView.swift
//  M2L5_Challenge
//
//  Created by Zach Mommaerts on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    
    var stringArray:[String] = ["Hello", "Hiya", "Aloha", "Howdy", "Good Morning"]
    @State var stringToDisplay:[String] = []
    
    var body: some View {
        VStack {
            List(stringToDisplay, id: \.self) { string in
                Text(string)
            }
            
            Button("Add to list") {
                addToList()
            }
        }
        .padding()
    }
    
    func addToList() {
        var randomIndex = Int.random(in: 0...4)
        stringToDisplay.append(stringArray[randomIndex])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
