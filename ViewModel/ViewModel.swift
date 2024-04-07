
import Foundation

class CovidDataViewModel : ObservableObject {
    
    @Published var data : [country]?
    
    // Construtor da classe
    init() {
        self.fetchAPI()
    }
    
    func fetchAPI(){
        guard let url = URL(string: "https://raw.githubusercontent.com/PedroDDM/swiftcovid19.json/main/Covid19-API.json") else { return }
        
               URLSession.shared.dataTask(with: url) { (data, _, _) in
                   let results = try! JSONDecoder().decode([country].self, from: data!)
                   print(results)
                   
                   DispatchQueue.main.async {
                        self.data = results
                   }
               }
               .resume()
    }
    
}
