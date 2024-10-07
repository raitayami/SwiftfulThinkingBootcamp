//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 04/10/2024.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false;
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack(alignment: .bottom){
                
                VStack(alignment: .center){
                    
                    Button("Button"){
                        showView.toggle()
                    }

                    Spacer()
                }
                
                if (showView){
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundStyle(.black)
                        .frame(height: geometry.size.height * 0.5)
                        .transition(.slide)
                        .animation(.easeInOut, value: showView)
                }
            }
            .ignoresSafeArea(edges: .bottom)
        }
        
    }
}

#Preview {
    TransitionBootcamp()
}
