//
//  ExtractSubViewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 04/10/2024.
//

import SwiftUI

struct ExtractSubViewsBootcamp: View {
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            contentLayer
            
        }
    }
    
    var contentLayer: some View{
        HStack{
            FruitItem(amount: 50, fruit: "Apples", backgroundColor: .red)
            FruitItem(amount: 1000, fruit: "Blueberries", backgroundColor: .blue)
            FruitItem(amount: 100 , fruit: "Kiwis", backgroundColor: .brown)
        }
    }
}

#Preview {
    ExtractSubViewsBootcamp()
}

struct FruitItem: View {
    
    let amount: Int;
    let fruit: String;
    let backgroundColor: Color
    
    var body: some View {
        VStack{
            Text(String(amount))
            Text(fruit)
        }
        .padding()
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
    }
}
