import SwiftUI

struct ContentView: View{
    var body : some View{
        VStack() {
            MapView().frame(height: 300)
            AkanImage().offset(y:-130)
                .padding(.bottom, -130)
            VStack(alignment: .leading){
                Text("Digital Wallet Corporation")
                .font(.title)
                .fontWeight(.bold)
                HStack(alignment: .center) {
                    Text("Tokyo, Chiyoda, Kioicho")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
                Text("Fintech for the globe")
                    .font(.subheadline)
                }
                Divider()
                Text("Who we are").font(.title)
                Text("We are leading financial service provider in Tokyo")
            }
            .padding()
            .background(Color.gray.opacity(0.1))
        }
    }
}

#Preview{
    ContentView()
}
