import SwiftUI

struct ContentView: View {
    
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    
    @State private var currentElementIndex = 0
    @State private var showAnswer = false
    
    var body: some View {
        VStack(spacing: 35) {
            
            Spacer()
            
            Image(elementList[currentElementIndex])
                .resizable()
                .scaledToFit()
                .frame(width: 140, height: 140)
            
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
