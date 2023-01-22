import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hybrid")
                .padding()
            Button("Start") {
                print("Hello World!")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
