//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 04/10/2024.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = .green;
    
    var body: some View {
        
        ZStack{
            
            backgroundColor.ignoresSafeArea(.all)
            
            contentLayer
            
        }
        
    }
    
    var contentLayer: some View{
        VStack{
            Text("Title")
                .font(.title)
            
            Button {
                buttonPressed()
            } label: {
                Text("Press me")
                    .padding()
                    .background(Color.black)
                    .foregroundStyle(.white)
                    .clipShape(Capsule())
                    .bold()
                
            }

        }
    }
    
    func buttonPressed(){
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
