//
//  RandomNumbersView.swift
//  GenerateAndOrder
//
//  Created by Filomena Stellino on 28/03/23.
//

import SwiftUI
import Algorithms

struct RandomNumbersView: View {
    @ObservedObject var model: NumbersModel
    
    @State private var numbers: [Int] = []
    @State private var sortOrder: SortOrder = .ascending 
    
    
    enum SortOrder {
        case ascending
        case descending
        
        var sortClosure: (Int, Int) -> Bool {
            switch self {
            case .ascending:
                return (<)
            case .descending:
                return (>)
            }
        }
    }
    
    var body: some View {
        VStack {
            
            
            HStack {
                TextField("Enter number of elements", text: $model.numberOfElements)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                
                Button(action: {
                    model.generateRandomNumbers()
                }) {
                    Text("Generate")
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
               
                }
                
                
                
               
            }
            .padding()
            Picker(selection: $sortOrder, label: Text("Sort Order")) {
                Text("Ascending").tag(SortOrder.ascending)
                Text("Descending").tag(SortOrder.descending)
            }
            
            if model.numbers.isEmpty == false {
                List(model.numbers, id: \.self) { number in
                    Text("\(number)")
                }
            }
//            Button("Sort") {
//                numbers.sorted(by: sortOrder.sortClosure)
            Button("Sort") {
                model.numbers.sort(by: sortOrder.sortClosure)
            }
            .font(.title3)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            //
           
            
            Spacer()
            
        }
        .navigationTitle("Generate Random Numbers")
    }
}
