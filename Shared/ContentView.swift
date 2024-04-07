import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CountryView().tabItem {
               Label("Home", systemImage: "house")
            }
            SearchView().tabItem {
                Label("Info", systemImage: "square.and.pencil")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
