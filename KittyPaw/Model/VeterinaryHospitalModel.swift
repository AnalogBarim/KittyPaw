import Foundation

struct VeterinaryHospitalModel: Hashable {
    let name: String
    let phoneNumber: String?
    let location: (latitude: Double, longitude: Double)?
    let dateCreated: Date
    let uuid: UUID
    
    let treatments: Set<TreatmentModel>?
    
    var hashValue: Int {
        return name.hashValue ^ dateCreated.hashValue ^ uuid.hashValue
    }
    
    static func == (lhs: VeterinaryHospitalModel, rhs: VeterinaryHospitalModel) -> Bool {
        return lhs.uuid == rhs.uuid
    }
}
