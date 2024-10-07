//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 04/10/2024.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false;
    
    var body: some View {
        VStack{
            Button(action: {
                withAnimation(
                    Animation
                        .default
                        .repeatCount(6, autoreverses: true)
                ){
                    isAnimated.toggle()

                }
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 10)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 500 : 30,
                    height: 300)
                .rotationEffect(Angle(degrees: isAnimated ? 180 : -180))
                .offset(y: isAnimated ? -50 : 50)
                
            //Order of modifies matters
            //Offset mvoes the element in x direction and y direction
                
            
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
