import CoreData

let containerName = "KittyPaw"

final class CoreDataManager {
    let persistentContainer: NSPersistentContainer
    let managedObjectContext: NSManagedObjectContext
    
    private init(containerName: String) {
        persistentContainer = NSPersistentContainer(name: containerName)
        persistentContainer.loadPersistentStores { if let error = $1 { fatalError("CoreData Error: \(error), \($0)") } }
        managedObjectContext = persistentContainer.viewContext
    }
    
    static let shared = CoreDataManager(containerName: containerName)
    
    func saveContext() {
        guard managedObjectContext.hasChanges else { return }
        do {
            try managedObjectContext.save()
        }
        catch {
            fatalError("CoreData Error: \(error)")
        }
    }
}
