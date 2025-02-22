import GRDB

class LastBlockHeight: Record {
    private static let primaryKey = "primaryKey"

    private let primaryKey: String = LastBlockHeight.primaryKey
    var height: Int?

    override init() {
        super.init()
    }

    override class var databaseTableName: String {
        "last_block_height"
    }

    enum Columns: String, ColumnExpression {
        case primaryKey
        case height
    }

    required init(row: Row) throws {
        height = row[Columns.height]

        try super.init(row: row)
    }

    override func encode(to container: inout PersistenceContainer) {
        container[Columns.primaryKey] = primaryKey
        container[Columns.height] = height
    }
}
