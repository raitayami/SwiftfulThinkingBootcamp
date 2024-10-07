//
//  TextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 06/10/2024.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldString: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        
        NavigationView{
            VStack{
                TextField("Write Something", text: $textFieldString)
                    .foregroundStyle(Color.black)
                    .padding()
                    .background(Color.gray.opacity(0.3).clipShape(RoundedRectangle(cornerRadius: 30)))
                    .font(.headline)
                
                Button(action: {
                    if check(){
                        addItem()

                    }
                }, label: {
                    Text(check() ? "SAFE TO SUBMIT" : "WRITE MORE")
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(check() ? Color.blue : Color.gray).clipShape(RoundedRectangle(cornerRadius: 10))
                        .font(.headline)
                })
                .disabled(!check())
                //activates when check is true, the ! makes it false, making the .disabled() not activate, but when check is false and the ! makes it true, the .disabled() gets activated
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .navigationTitle("List")
            .padding()
        }
 
    }
    func addItem(){
        dataArray.append(textFieldString)
        textFieldString = ""
    }
    
    func check() -> Bool{
        if textFieldString.count >= 3 {
            return true
        }
        
        return false
    }
}

#Preview {
    TextFieldBootcamp()
}
