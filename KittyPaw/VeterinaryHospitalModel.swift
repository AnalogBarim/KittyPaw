import Foundation

struct VeterinaryHospitalModel {
    let name: String
    let phoneNumber: String?
    let location: (latitude: Double, longitude: Double)?
    let dateCreated: Date
    let uuid: UUID
    
    let treatments: Set<TreatmentModel>?
}
