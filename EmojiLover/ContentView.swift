//
//  ContentView.swift
//  EmojiLover
//
//  Created by VGoychev on 17.08.24.
//

import SwiftUI

enum Emoji: String {
    case cool = "😎"
    case skull = "💀"
    case strong = "💪"
    case heart = "❤️"
    
    static var allCases: [Emoji]{
        return [.cool,.skull,.strong,.heart]
    }
}

struct ContentView: View {
   @State var selection:Emoji = .cool
    
    var body: some View {
        NavigationView{
            VStack{
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id:\.self){
                        emoji in Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Lovers!")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
