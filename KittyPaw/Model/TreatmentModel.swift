import Foundation

struct TreatmentModel {
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
}
