
import SwiftUI

struct CountryView: View {
    
    @ObservedObject var viewModel = CovidDataViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    
                    Text(viewModel.data?[0].country ?? "")
                    
                        Section{
                            ForEach(viewModel.data?[0].provinces ?? [],id: \.id) { result in
                                Text("Confirmados: " + String(result.confirmed))
                                Text("Recuperados: " + String(result.recovered))
                                Text("Mortes: " + String(result.deaths))
                                Text("Ativos: " + String(result.active))
                            }
                        }
            }.navigationBarTitle(Text("Covid-19"))
        }
    }
}
}

struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        CountryView()
    }
}



