//
//  ContentView.swift
//  Fakestagram
//
//  Created by Felipe Baggioto on 11/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Header()
            
            ContentList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Text("Fakestagram")
                .font(.title)
                .fontWeight(.medium)
                .italic()
                .padding(.horizontal)
            
            Spacer()
        }
    }
}

struct ContentList: View {
    var body: some View {
        List(){
            
            StoryList()
            
            Post()
            Post()
            Post()
            Post()
            Post()
        }
        .listStyle(.plain)
    }
}

