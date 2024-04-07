
import SwiftUI

struct SearchView: View {
    @ObservedObject var viewModel = CovidDataViewModel()
    
    var body: some View {
        NavigationView {
            
            Form {
                Section {
                    ScrollView{
                        Section{
                            Text("É uma doença infeciosa causada pelo vírus SARS-CoV-2. A maioria das pessoas que contraem a COVID-19 tem sintomas ligeiros a moderados e recupera sem necessitar de tratamento especial. No entanto, algumas ficam gravemente doentes e necessitam de assistência médica.")
                                .multilineTextAlignment(.center)
                                .padding(.all)
                            
                            Text("Como se propaga?").font(.title2).fontWeight(.bold).multilineTextAlignment(.center).padding(.all)
                            
                            Text("O vírus pode propagar-se a partir da boca ou do nariz de uma pessoa infetada através de pequenas partículas líquidas que a pessoa emite quando tosse, espirra, fala, canta ou respira. Estas partículas vão desde gotículas respiratórias de maiores dimensões a aerossóis mais pequenos. Qualquer pessoa pode ser infetada ao inspirar o vírus se estiver perto de alguém com COVID-19 ou tocar numa superfície contaminada e, em seguida, nos olhos, no nariz ou na boca. O vírus propaga-se mais facilmente em ambientes fechados e espaços lotados.")
                                .multilineTextAlignment(.center)
                                .padding(.all)
                        }
                    }
            }.navigationBarTitle(Text("INFO"))
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
}
