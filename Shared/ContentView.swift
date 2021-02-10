//
//  ContentView.swift
//  Shared
//
//  Created by Dustin Olsen on 2/9/21.
//
import SwiftUI

struct ContentView: View {
    
    @State private var username = ""
    @State private var email = ""
    
    var disableForm: Bool {
        username.count < 5 || email.count < 5
    }
    
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }
            
            Section {
                Button("Create Account") {
                    print("Creating Account....")
                }
            }
//            .disabled(username.isEmpty || email.isEmpty)
            .disabled(disableForm)
        }
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
