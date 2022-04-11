//
//  utils.swift
//  UITests
//
//  Created by Sumit Verma on 23/02/22.
//

import Foundation
import XCTest

class Utils {
    
        static func loadData(filename : String) -> [Any] {
        let filePath = Bundle(for: self).path(forResource: filename, ofType: "json") ?? "default"
        let url = URL(fileURLWithPath: filePath)
        do {
            let data = try Data(contentsOf: url)
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            let exampleArray =  json as! [Any]
            if exampleArray.isEmpty {
                XCTFail("Source file \(filename) is empty.")
            }
            return exampleArray
            }
            catch {
                XCTFail("Error: \(error)")

                    XCTFail("File \(filename) not found.")
                    return []
                }
    }
}
