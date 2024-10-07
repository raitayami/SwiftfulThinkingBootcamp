//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 06/10/2024.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Planche Training") {
                    PlancheView()
                }
                NavigationLink("Front Lever Training") {
                    FrontLeverView()
                }
                NavigationLink("Reps and Sets") {
                    RepsAndSets()
                }
            }
            .navigationTitle("Calisthenics Training")
            .toolbar(content: {
                HStack{
                    NavigationLink {
                        Settings()
                    } label: {
                        Image(systemName: "gear")
                    }
                    NavigationLink {
                        Profile()
                    } label: {
                        Image(systemName: "person")
                    }
                }
            })
            

        }
    }
}

struct PlancheView: View{
    var body: some View{
        Text("Planche View")
        VStack{
            NavigationLink("Begineer") {
                BeginnerPlancheView()
            }
        }
    }
}

struct BeginnerPlancheView: View {
    var body: some View {
        Text("Beginner planche view")
    }
}

struct FrontLeverView: View{
    var body: some View{
        
        Text("Front Lever View")
    }
}

struct RepsAndSets:View{
    @Environment(\.dismiss) var dismissScreen

    var body: some View{
        VStack{
            Text("Reps and Sets View")
                .navigationBarBackButtonHidden()
            Spacer()
            Button(action: {
                dismissScreen()

            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.red)
                    .padding(20)
                    .font(.title)
            })
        }
    }
}

struct Settings:View{
    var body: some View{
        Text("Settings View")
    }
}

struct Profile:View{
    var body: some View{
        Text("Profile View")
    }
}

#Preview {
    NavigationViewBootcamp()
}
