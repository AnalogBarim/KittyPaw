import Foundation

struct TreatmentModel: Hashable {
    enum TreatmentType: String {
        case checkUp
        case vaccination
        case desex
        case etc
    }
    
    let treatmentType: TreatmentType
    let name: String
    let dueDate: Date?
    let date: Date?
    let note: String?
    let dateCreated: Date
    let uuid: UUID
    
    let pet: PetModel
    let veterinaryHospital: VeterinaryHospitalModel
    
    var hashValue: Int {
        return treatmentType.hashValue ^ name.hashValue ^ dateCreated.hashValue ^ uuid.hashValue ^ pet.hashValue ^ veterinaryHospital.hashValue
    }
    
    static func == (lhs: TreatmentModel, rhs: TreatmentModel) -> Bool {
        return lhs.uuid == rhs.uuid
    }
}
