//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 07/10/2024.
//

import SwiftUI

struct UserModel: Identifiable{
    let id: UUID = UUID()
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
//        "Kundan", "Sagar", "Daanish", "Arbin"
        UserModel(displayName: "Kundan Lama", userName: "KundanL10", followerCount: 1652, isVerified: true),
        UserModel(displayName: "Sagar Limbu", userName: "Sagar200", followerCount: 932, isVerified: false),
        UserModel(displayName: "Daanish Khan", userName: "Daanish91", followerCount: 542, isVerified: false),
        UserModel(displayName: "Arbin Bahik", userName: "Arbin95", followerCount: 1948, isVerified: true)
    ]
    var body: some View {
        NavigationView{
            List{
                ForEach(users){ user in
                    HStack{
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading){
                            Text("\(user.id)")
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                        
                        if(user.isVerified){
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                        
                        VStack{
                            Text("\(user.followerCount)")
                            Text("Followers")
                                .font(.caption)
                                
                            
                        }
                    }
                    .padding(15)
//                    .background(user.isVerified ? Color.green : Color.red)

                }
                
            }
            .listStyle(.inset)
            .navigationTitle("Names")
        }
    }
}

#Preview {
    ModelBootcamp()
}
