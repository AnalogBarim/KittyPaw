import Foundation

struct LogModel {
    enum DataType: String {
        case feed, water, litter, toy
        case weight, sleep, vomit
        case etc
    }
    
    let dataType: DataType
    let quantity: Double
    let price: Double
    let startDate: Date?
    let endDate: Date?
    let metadata: String?
    let dateCreated: Date
    let uuid: UUID
    
    let pet: PetModel
}
