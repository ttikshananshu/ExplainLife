import UIKit
import Foundation


struct UserRecord1 : Decodable {
    let name : String
    let email: String
    let password: String // Don't pass passwords in plain text around in JSON
}

class Utils2 {
    static func loadData() -> [UserRecord1] {
        do {
            let decoder = JSONDecoder()
            let data = JSONContent
            let json = try decoder.decode([UserRecord1].self, from: data)
            return json
        }
        catch let error {
            print("The json could not be decoded \(error)")
            return []
        }
    }
}
