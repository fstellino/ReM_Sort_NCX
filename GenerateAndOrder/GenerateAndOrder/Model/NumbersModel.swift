//
//  NumbersModel.swift
//  GenerateAndOrder
//
//  Created by Filomena Stellino on 28/03/23.
//

import Foundation

class NumbersModel: ObservableObject {
    @Published var numbers: [Int] = []
    @Published var numberOfElements: String = ""
    
    func generateRandomNumbers() {
        guard let count = Int(numberOfElements) else { return }
        numbers = (1...count).map { _ in Int.random(in: 1...100) }
    }
    
    
    
}



