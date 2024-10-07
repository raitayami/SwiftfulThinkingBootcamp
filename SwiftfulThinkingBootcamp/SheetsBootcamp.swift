//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 04/10/2024.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var isPresented: Bool = false;
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea(.all)

            
            Button("Click") {
                isPresented.toggle()
            }
            .padding()
            .background(Color.white)
            .foregroundStyle(.green)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
        }
        .fullScreenCover(isPresented: $isPresented, content: {
            SecondScreen()
        })
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismissScreen
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.red
                .ignoresSafeArea(.all)

            Button(action: {
                dismissScreen()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .padding(20)
                    .font(.title)
            })
            
            
            
        }
        
    }
        
        
}

#Preview {
    SheetsBootcamp()
}
