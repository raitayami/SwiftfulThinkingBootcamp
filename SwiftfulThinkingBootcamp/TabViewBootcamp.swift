//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 06/10/2024.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedIndex: Int = 3
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            
            HomeView(selectedIndex: $selectedIndex)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            BrowseView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            ProfileView(selectedIndex: $selectedIndex)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
            
            PageTabView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Style")
                }
                .tag(3)
        }
        .tint(Color.green)
    }
}

#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    
    @Binding var selectedIndex: Int
    
    var body: some View {
        ZStack{
            Color.yellow.ignoresSafeArea(edges: .top )
            VStack{
                Text("1")
                    .foregroundStyle(.white)
                    .font(.title)
                
                Button(action: {
                    selectedIndex = 2
                }, label: {
                    Text("Take me to profile view")
                        .padding()
                        .background(.white)
                })
            }
        }
    }
}

struct BrowseView: View {
    var body: some View{
        ZStack{
            Color.black.ignoresSafeArea(.all)
            Text("Browse View")
                .foregroundStyle(.white)
        }
    }
}

struct ProfileView: View {
    
    @Binding var selectedIndex: Int
    
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea(edges: .top )
            VStack{
                Text("Profile View")
                
                Button(action: {
                    selectedIndex = 3
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
            }
        }
            
    }
}


struct PageTabView: View{
    
    
    
    let icons: [String] = [
        "figure.disc.sports",
        "figure.equestrian.sports",
        "figure.american.football",
        "figure.soccer",
        "figure.basketball",
        "figure.kickboxing",
        "figure.boxing",
        "figure.outdoor.cycle"
    ]
    
    var body: some View{
        TabView{
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(40)
                    .foregroundStyle(.white)
            }
        }
        .background(Color.blue)
        .frame(height: 200)
        .tabViewStyle(PageTabViewStyle())
        .clipShape(RoundedRectangle(cornerRadius: 20))

    }
}
