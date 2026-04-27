import SwiftUI

struct ContentView: View {
    
    // MARK: - Data
    // This array replaces the elementList from ViewController.swift
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    
    // MARK: - State
    // @State lets SwiftUI update the screen when the value changes
    @State private var currentElementIndex = 0
    @State private var showAnswer = false
    
    var body: some View {
        VStack(spacing: 35) {
            
            Spacer()
            
            // Shows the current element image from Assets
            Image(elementList[currentElementIndex])
                .resizable()
                .scaledToFit()
                .frame(width: 140, height: 140)
            
            // Shows "?" first, then the answer after button is tapped
            Text(showAnswer ? elementList[currentElementIndex] : "?")
                .font(.system(size: 24, weight: .bold))
                .multilineTextAlignment(.center)
            
            HStack(spacing: 40) {
                
                Button("Show Answer") {
                    showAnswer = true
                }
                
                Button("Next Element") {
                    currentElementIndex += 1
                    
                    if currentElementIndex >= elementList.count {
                        currentElementIndex = 0
                    }
                    
                    showAnswer = false
                }
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
