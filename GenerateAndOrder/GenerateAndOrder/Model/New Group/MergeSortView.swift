//
//  MergeSortView.swift
//  GenerateAndOrder
//
//  Created by Filomena Stellino on 28/03/23.
//

//import SwiftUI
//import Algorithms
//
//struct MergeSortView: View {
//    @ObservedObject var model: NumbersModel
//    
//    var body: some View {
//        VStack {
//            Text("MergeSort")
//                .font(.title)
//                .padding()
//            
//            Button(action: {
//                model.numbers.mergeSort()
//            }) {
//                Text("Sort")
//                    .font(.title3)
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.blue)
//                    .cornerRadius(10)
//            }
//            .padding()
//            
//            if model.numbers.isEmpty == false {
//                List(model.numbers, id: \.self) { number in
//                    Text("\(number)")
//                }
//            }
//            
//            Spacer()
//        }
//        .navigationTitle("MergeSort")
//    }
//}
//
//
//struct MergeSortView_Previews: PreviewProvider {
//    static var previews: some View {
//        MergeSortView()
//    }
//}
