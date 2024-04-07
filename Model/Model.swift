
import Foundation

struct country : Codable, Identifiable{
    var id : UUID? = UUID()
    let country : String
    let provinces : [provinces]
}

struct provinces : Codable, Identifiable{
    var id : UUID? = UUID()
    let province: String
    let confirmed: Int
    let recovered: Int
    let deaths: Int
    let active: Int
}
