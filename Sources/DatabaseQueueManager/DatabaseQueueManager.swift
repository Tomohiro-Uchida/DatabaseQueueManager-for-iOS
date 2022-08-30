import SwiftUI
import RealmSwift

public class DatabaseQueue: Hashable {
    public static func == (lhs: DatabaseQueue, rhs: DatabaseQueue) -> Bool {
        return (lhs.entity == rhs.entity)
    }
    public func hash(into hasher: inout Hasher) {
        hasher.combine(entity)
    }
    var entity: Object = Object()
}

public class DatabaseQueueManager {

    public init() {
    }
    
    var databaseQueue:[DatabaseQueue] = []

    public func insertQueue(at: Int, entity:Object) {
        let element = DatabaseQueue()
        element.entity = entity
        databaseQueue.insert(element, at: at)
    }

    public func appendQueue(entity:Object) {
        let element = DatabaseQueue()
        element.entity = entity
        databaseQueue.append(element)
    }

    public func removeQueue(at: Int) {
        databaseQueue.remove(at: at)
    }
    
    public func moveQueue(from: Int, to: Int) {
        databaseQueue.move(fromOffsets: IndexSet(integer: from), toOffset: to)
    }
    
    public func queryQueue() -> [DatabaseQueue] {
        return databaseQueue
    }
    
    public func scanOder(updateQueueOrder: (Object, Int) -> Void) {
        var order = 0
        databaseQueue.forEach {
            // databaseManager.updateUser(user: $0.entity as! User, queueOrder: order)
            updateQueueOrder($0.entity, order)
            order += 1
        }
    }

}
