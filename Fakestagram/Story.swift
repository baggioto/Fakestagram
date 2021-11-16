//
//  Story.swift
//  Fakestagram
//
//  Created by Felipe Baggioto on 11/11/21.
//

import SwiftUI


struct Story: View {
    var body: some View {
        VStack {
            Image("perfil")
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.red, lineWidth: 3)
                }.shadow(radius: 5)
            
            Text("Felipe")
                .font(.footnote)
        }.padding(5)
        
    }
}

struct StoryList: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack{

                ForEach(0..<5) {_ in
                    Story()
                }
                
            }
        }
    }
}

struct Story_Previews: PreviewProvider {
    static var previews: some View {
        StoryList()
    }
}
