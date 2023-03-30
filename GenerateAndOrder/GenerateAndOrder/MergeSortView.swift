//
//  MergeSortView.swift
//  GenerateAndOrder
//
//  Created by Filomena Stellino on 28/03/23.
//



import SwiftUI
import Algorithms


struct MergeSortView: View {
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
        NavigationView {
            VStack {
                Button(action: {
                    numbers = Array(0..<100).shuffled()
                }, label: {
                    Text("Generate Random Numbers")
                })
                
                Picker(selection: $sortOrder, label: Text("Sort Order")) {
                    Text("Ascending").tag(SortOrder.ascending)
                    Text("Descending").tag(SortOrder.descending)
                }.pickerStyle(SegmentedPickerStyle())
                
                if !numbers.isEmpty {
                    List(numbers.sorted(by: sortOrder.sortClosure), id: \.self) { number in
                        Text("\(number)")
                    }
                }
            }
            .navigationTitle("Merge Sort")
        }
    }
}

