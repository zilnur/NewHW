//
//  ContentView.swift
//  NewHW
//
//  Created by Ильнур Закиров on 15.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State var loginText = ""
    @State var passText = ""
    
    var body: some View {
        TabView{
            VStack(spacing: 30) {
            Text("Текс для заголовка")
                .forTitle()
            Text("Основной текс")
                .forMain()
            }
                .tabItem {
                    Image(systemName: "house")
                    Text("Feel")
            }
            ScrollView {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .top)
                    .padding(.top, 120)
                    .padding(.bottom, 100)
                VStack(spacing: 0) {
                    TextField("Username", text: $loginText)
                        .frame(width: 300, height: 50, alignment: .center)
                    Divider().frame(width: 300, height: 1, alignment: .center)
                        .border(.gray)
                    SecureField("Password", text: $passText)
                        .frame(width: 300, height: 50, alignment: .center)
                }
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray, lineWidth: 0.5))
                .padding(.bottom, 16)
                Button("Log in") {
                    print("Log in")
                }
                .frame(width: 300, height: 50, alignment: .center)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(10)
            }
            .tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
        Text("Player")
            .tabItem {
                Image(systemName: "music.note")
                Text("Player")
            }
        Text("Video")
            .tabItem {
                Image(systemName: "play.rectangle.fill")
                Text("Video")
            }
        Text("Recorder")
            .tabItem {
                Image(systemName: "mic.fill")
                Text("Recorder")
            }
        }
        .onAppear {
            UITabBar.appearance().backgroundColor = .systemGray6
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
