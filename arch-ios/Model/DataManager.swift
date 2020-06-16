import Foundation

protocol DataManager {
    func fetchNameList() -> [String]
}

class DataManagerImpl: DataManager {
    func fetchNameList() -> [String] {
        return ["data_1", "data_2", "data_3", "data_4", "data_5"]
    }
}
