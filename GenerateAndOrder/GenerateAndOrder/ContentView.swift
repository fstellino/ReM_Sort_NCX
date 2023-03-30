//
//  ContentView.swift
//  GenerateAndOrder
//
//  Created by Filomena Stellino on 28/03/23.
//

import SwiftUI
import Algorithms

struct ContentView: View {
    @StateObject var model = NumbersModel()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {Text("").font(.title)
                NavigationLink(destination: RandomNumbersView(model: model)) {
                    Text("Generate Random Numbers")
                        .font(.title.bold())
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                            .cornerRadius(10)
                            .frame(width: 200, height: 700, alignment: .center)
                            
                        
                }
                
              
                
                
            }
            .navigationTitle("SwiftUI Algorithms")
        }
    }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
