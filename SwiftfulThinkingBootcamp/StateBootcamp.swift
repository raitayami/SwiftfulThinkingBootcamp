//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 03/10/2024.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            //Background
            backgroundColor
                .ignoresSafeArea(edges: .all)
            
            //Content
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 10){
                    Button("Turn me Red") {
                        backgroundColor = .red
                        myTitle = "RED"
                        count += 1
                    }
                    Button("Turn me Purple") {
                        backgroundColor = .purple
                        myTitle = "Purple"
                        count += 1

                    }
                }
            }
            .foregroundStyle(Color.white)
                
        }
    }
}

#Preview {
    StateBootcamp()
}
