//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 03/10/2024.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color;
    let count: Int;
    let title: String;
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple{
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit{
        case apple
        case orange
    }
    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(Color.white)
                .underline()
            
            Text("\(title)")
                .font(.headline)
                .foregroundStyle(Color.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        
    }
}

#Preview {
    HStack{
        InitializerBootcamp(count: 100, fruit: .orange)
        InitializerBootcamp(count: 1100, fruit: .apple)

    }
}
