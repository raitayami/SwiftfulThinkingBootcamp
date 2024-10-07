//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 04/10/2024.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false;
//    let timing = 10.0
    
    var body: some View {
        VStack{
            Button(action: {
                isAnimating.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 200 : 90, height: 100)
//                .animation(Animation.linear(duration: timing), value: isAnimating)
//            //idk why i put isAnimating there
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 200 : 90, height: 100)
//                .animation(.easeInOut, value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 200 : 90, height: 100)
//                .animation(.linear, value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 200 : 90, height: 100)
//                .animation(.bouncy, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 200 : 90, height: 100)
                .animation(.spring(
                    response: 1.0,
                    dampingFraction: 0.2,
                    blendDuration: 1.00
                ), value: isAnimating)
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
