//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 04/10/2024.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = .indigo
    @State var title: String = "Title"
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea(.all)
            
            VStack{
                Text(title)
                    .font(.title)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View{
    
    @Binding var backgroundColor: Color;
    @Binding var title: String;
    
    var body: some View{
        Button(action: {
            backgroundColor = .green
            title = "New Title"
        }, label: {
            Text("Click me")
                .foregroundStyle(.white)
                .padding()
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        })
    }
}

#Preview {
    BindingBootcamp()
}
