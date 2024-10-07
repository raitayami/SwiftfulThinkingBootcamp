//
//  ViewModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Tayami Rai on 07/10/2024.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: UUID = UUID()
    let name: String
    let count: Int
    
}

class FruitViewModel: ObservableObject{
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Orange", count: 23953)
        let fruit2 = FruitModel(name: "Banana", count: 94932)
        let fruit3 = FruitModel(name: "Raspberries", count: 9817372)
        let fruit4 = FruitModel(name: "Blueberries", count: 100000)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.fruitArray.append(fruit4)
            self.isLoading = false

        }

    }
    
    func deleteFruit(index: IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    
    //@StateObject - use this on creation / init
    //@ObservedObject - use this for subviews
    
//    @State var fruitArray: [FruitModel] = []
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView{
            List{
                if (fruitViewModel.isLoading){
                    ProgressView()
                }else{
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundStyle(.blue)
                            Text(fruit.name)
                                .font(.headline)
                                
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .toolbar(content: {
                NavigationLink {
                    RandomScreen(fruitViewModel: fruitViewModel)
                } label: {
                    Image(systemName: "arrow.right")
                }

            })
//            .onAppear(perform: {
//                fruitViewModel.getFruits()
//            })
        }
    }

}

struct RandomScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @ObservedObject var fruitViewModel: FruitViewModel
    var body: some View {
        
        ZStack{
            Color.green.ignoresSafeArea(.all)
            
            VStack{
                ForEach(fruitViewModel.fruitArray){ fruit in
                    Text(fruit.name)
                        .foregroundStyle(.white)
                        .font(.headline)
                }
            }
            
        }
    }
}

#Preview {
    ViewModelBootcamp()
}
