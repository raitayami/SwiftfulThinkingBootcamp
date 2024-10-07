//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 06/10/2024.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var displayText: String?
    @State var isLoading: Bool = false
    @State var currentUserID: String? = "User g34t2gvfe2i9"
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Here we are practicing safe coding!")
                
                if let text = displayText{
                    Text(text)
                        .font(.title)
                }
                
//                Do no force unwrap values
//                Text(displayText!)
//                    .font(.title)

                
                if isLoading{
                    ProgressView()
                }
                
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear(perform: {
                loadData2()
            })
        }
    }
    
    func loadData(){
        
        //Checking if there is a value before running the code
        if let userID = currentUserID{
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                displayText = "This is the new data. Hello \(userID)"
                isLoading = false;
            }
        } else {
            displayText = "ERRRRR"
        }

    }
    
    func loadData2(){
        
        //The guard keyword is saying, if userID has a value, then let userID = currentUserID, but if not the else block will run
        
        guard let userID = currentUserID else {
            displayText = "ERRRRR"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            displayText = "This is the new data. Hello \(userID)"
            isLoading = false;
        }
        
    }
}

#Preview {
    IfLetGuardBootcamp()
}
