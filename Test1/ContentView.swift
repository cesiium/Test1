//
//  ContentView.swift
//  Test1
//
//  Created by Sara Al Fahdawi on 20/2/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var age = 0.0
    
    func calculateDogYears() -> Double {
        return age * 7
    }
     var body: some View {
        VStack {
    
            switch age{
            case 0...15:
                Text("🐶")
                    .font(.system(size: 100))
            case 0...25:
                Text("💀")
                    .font(.system(size: 100))
            default:
                Text("❌")
                    .font(.system(size: 100))
                
            }
           
            Text("Dog Years Calculator")
                .font(.largeTitle)
                .fontDesign(.rounded)
                .foregroundStyle(.brown)
                .fontWeight(.black)
            Slider(value: $age, in: 0...25, step:1)
            Text("My Age: \(Int(age))")
                .font(.title2)
                .fontWeight(.bold)
            Text("Age in dog years: \(Int(calculateDogYears()))")
                .font(.title2)
                .fontWeight(.bold)
    
           
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
