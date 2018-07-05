import Foundation

struct MessageModel: Hashable {
    let text: String
    let dateRead: Date?
    let fromButler: Bool
    let dateCreated: Date
    let uuid: UUID
    
    let pet: PetModel
    
    var hashValue: Int {
        return text.hashValue ^ fromButler.hashValue ^ dateCreated.hashValue ^ uuid.hashValue ^ pet.hashValue
    }
    
    static func == (lhs: MessageModel, rhs: MessageModel) -> Bool {
        return lhs.uuid == rhs.uuid
    }
}
