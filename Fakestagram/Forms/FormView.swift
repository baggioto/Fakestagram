//
//  FormView.swift
//  Fakestagram
//
//  Created by Felipe Baggioto on 18/11/21.
//

import SwiftUI

struct FormView: View {
    @ObservedObject private var userViewModel = FormViewModel()
    @State var presentAlert = false
    
    
    let disabledColor = Color(hue: 0.263, saturation: 0.096, brightness: 0.405)
    
    var body: some View {
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
                Button(action: { self.signUp() }) {
                    HStack{
                        Spacer()
                        
                        Text("Sign up")
                            .foregroundColor(userViewModel.isValid ? .white : disabledColor)
                        
                        Spacer()
                    }
                }.disabled(!userViewModel.isValid)
            }.listRowBackground(userViewModel.isValid ? Color.blue : Color.gray)
            
        }
        .sheet(isPresented: $presentAlert) {
            WelcomeView()
        }
    }
    
    func signUp() {
        self.presentAlert = true
    }
}

struct WelcomeView: View {
    var body: some View {
        Text("Welcome! Great to have you on board!")
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView().preferredColorScheme(.dark)
    }
}
