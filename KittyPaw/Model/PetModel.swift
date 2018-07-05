import Foundation

struct PetModel: Hashable {
    enum Species {
        enum CatBreed: String {
            // https://en.wikipedia.org/wiki/List_of_cat_breeds ; https://en.wikipedia.org/wiki/Cat_Fanciers%27_Association
            case domestic
            case abyssinian, americanBobtail, americanCurl, americanShorthair, balinese, birman, bombay, bengal, britishShorthair, britishLonghair, chartreux, cornishRex, devonRex, egyptianMau, exoticShorthair, havanaBrown, japaneseBobtail, javanese, korat, laPerm, maineCoon, manx, norwegianForest, orientalShorthair, orientalLonghair, persian, ragamuffin, ragdoll, russianBlue, scottishFold, selkirkRex, siamese, siberian, singapura, somali, sphynx, tonkinese, turkishAngora, turkishVan
            case aegean, americanWirehair, arabianMau, australianMist, asian, asianSemiLonghair, bambino, brazilianShorthair, britishSemiLonghair, burmese, burmilla, californiaSpangled, chantillyTiffany, chausie, cheetoh, colorpointShorthair, cyprus, donskoy, dragonLi, dwarf, dwelf, europeanShorthair, foldex, germanRex, highlander, himalayan, colorpointPersian, kurilianBobtail, khaoManee, lykoi, minskin, munchkin, nebelung, napoleon, ojosAzules, oregonRex, orientalBicolor, perFold, peterbald, pixieBob, raas, russianWhite, russianBlack, russianTabby, samSawet, savannah, serengeti, serradepetit, snowshoe, sokoke, suphalak, thai, thaiLilac, toyger, ukrainianLevkoy
            case _unknown
        }
        
        enum DogBreed: String {
            // https://en.wikipedia.org/wiki/List_of_dog_breeds
            case affenpinscher, afghanHound
            case afghanShepherd
            case _unknown
        }
        
        case cat(CatBreed)
        case dog(DogBreed)
    }
    
    enum Gender: String {
        case male, female
        case _unknown
    }
    
    let name: String
    let species: Species
    let gender: Gender
    let colors: String?
    let dateOfBirth: Date?
    let firstEncounter: Date?
    let farewell: Date?
    let profileImage: Data?
    let territory: (latitude: Double, longitude: Double)?
    let notify: Bool
    let dateCreated: Date
    let uuid: UUID
    
    let messages: Set<MessageModel>?
    let logs: Set<LogModel>?
    let treatments: Set<TreatmentModel>?
    
    var hashValue: Int {
        return name.hashValue ^ notify.hashValue ^ dateCreated.hashValue ^ uuid.hashValue
    }
    
    static func == (lhs: PetModel, rhs: PetModel) -> Bool {
        return lhs.uuid == rhs.uuid
    }
}
