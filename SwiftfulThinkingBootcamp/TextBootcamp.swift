//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 03/10/2024.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("I am going to get a job in 2 months!".capitalized)
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline(true, color: Color.blue)
//            .italic()
//            .strikethrough(true, color: Color.green)
            .font(.system(size: 24, weight: .semibold))
            .frame(width: 100, height: 100)
            .minimumScaleFactor(0.1)
        
        
    }
}

#Preview {
    TextBootcamp()
}
