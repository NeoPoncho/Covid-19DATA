
import SwiftUI

struct Splashscreen: View {
    @State var isActive:Bool = false
        
        var body: some View {
            VStack {

                if self.isActive {
                    ContentView()
                } else {
                    
                    Image("images")
                        .resizable(resizingMode: .stretch)
                        .frame(width: 100.0, height: 100.0)                      

                    Text("Covid-19 DATA")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.all)
                }
            }

            .onAppear {

                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {

                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
}

struct Splashscreen_Previews: PreviewProvider {
    static var previews: some View {
        Splashscreen()
    }
}
