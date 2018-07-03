import Foundation

struct MessageModel {
    let text: String
    let dateRead: Date?
    let fromButler: Bool
    let dateCreated: Date
    let uuid: UUID
    
    let pet: PetModel
}
