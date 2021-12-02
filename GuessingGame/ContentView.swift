//
//  ContentView.swift
//  GuessingGame
//
//  Created by Nicole on 2021/12/2.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 40){
           
                Slider(value: .constant(50.0),
                       in: 0.0...100.0,
                       step: 1.0,
                       label: {
                            Text("Opacity")
                },
                       minimumValueLabel: {
                            Text("0")
                },
                       maximumValueLabel: {
                            Text("100")
                })

            
            Text("30")
                .font(.title)

            
            Button(action: {
                print("Button was pressed")
            }, label: {
                Text("Submit Guess")
            })
            .buttonStyle(.bordered)
           
            
            Spacer()
        }
        .navigationTitle("Guessing Game")
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ContentView()
        }
    }
}
