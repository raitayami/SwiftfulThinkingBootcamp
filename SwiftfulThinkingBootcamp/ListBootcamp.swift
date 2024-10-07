//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 06/10/2024.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "Apple",
        "Banana",
        "Peach",
        "Blueberries"
    ]
    
    var body: some View {
        List {
            Section("Fruits") {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                }
                .onDelete(perform: delete)
                // 9 - 9.45 (code got minimized)
            }
            
        }
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)

    }
}

#Preview {
    ListBootcamp()
}
