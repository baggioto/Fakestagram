//
//  Post.swift
//  Fakestagram
//
//  Created by Felipe Baggioto on 11/11/21.
//

import SwiftUI

struct Post: View {
    var body: some View {
        VStack {
            
            PostHeader()
            
            Image("samuel")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            PostDetails()
            
        }.padding(.vertical)
            .listRowSeparator(.hidden)
        
    }
}

struct PostHeader: View {
    var body: some View {
        HStack {
            Image("tarantino")
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)
                .clipShape(Circle())
            
            Text("tarantinouniverse")
                .font(.footnote)
                .bold()
            
            Spacer()
            
            Text("...")
                .font(.footnote)
                .bold()
        }
    }
}


struct PostDetails: View {
    var body: some View {
        VStack {
            HStack{
                Text("Liked by feliggioto and others")
                
                Spacer()
            }
            
            Spacer()
                .frame(height: 12)
            
            Text("tarantinouniverse: If you pay attention, the bullet holes can be seen before the shooting...")
        }
    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post()
    }
}
