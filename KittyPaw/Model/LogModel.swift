import Foundation

struct LogModel: Hashable {
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
    
    var hashValue: Int {
        return dataType.hashValue ^ quantity.hashValue ^ price.hashValue ^ dateCreated.hashValue ^ uuid.hashValue ^ pet.hashValue
    }
    
    static func == (lhs: LogModel, rhs: LogModel) -> Bool {
        return lhs.uuid == rhs.uuid
    }
}
