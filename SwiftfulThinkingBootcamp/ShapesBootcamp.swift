//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 03/10/2024.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//            .fill(Color.blue)
//            .stroke()
//            .stroke(Color.blue)
//            .stroke(Color.blue, lineWidth: 10)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.purple, lineWidth: 20)
        
//        
//        Ellipse()
//            .fill(Color.blue)
        
        Capsule(style: .continuous)
            .frame(width: 200, height: 100)
        
        Rectangle()
        
        RoundedRectangle(cornerRadius: 20)

        
        
    }
}

#Preview {
    ShapesBootcamp()
}
