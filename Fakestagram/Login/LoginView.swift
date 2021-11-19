//
//  LoginView.swift
//  Fakestagram
//
//  Created by Felipe Baggioto on 18/11/21.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject private var userViewModel = LoginViewModel()
    @State var presentAlert = false
    
    let disabledColor = Color(hue: 0.263, saturation: 0.096, brightness: 0.405)
    
    var body: some View {
        NavigationView{

            VStack {

                Text("Fakestagram")
                    .font(.title)
                    .fontWeight(.medium)
                    .italic()
                
                Form {
                    Section(footer: Text(userViewModel.usernameMessage).foregroundColor(.red)) {
                        TextField("Username", text: $userViewModel.username)
                            .autocapitalization(.none)
                    }
                    
                    Section(footer: Text(userViewModel.passwordMessage).foregroundColor(.red)) {
                        SecureField("Password", text: $userViewModel.password)
                        SecureField("Password again", text: $userViewModel.passwordAgain)
                    }
                    
                    Section {
                        
                        ZStack(alignment: .center){
                            NavigationLink("Sign in",
                                           destination: HomeView())
                                .opacity(0)
                            
                            Text("Sign in")
                        }
                        
                    }.disabled(!userViewModel.isValid)
                        .listRowBackground(userViewModel.isValid ? Color.blue : Color.gray)
                }.navigationBarHidden(true)
                
                
            }
        }
    }
}

struct WelcomeView: View {
    var body: some View {
        Text("Welcome! Great to have you on board!")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().preferredColorScheme(.dark)
    }
}
