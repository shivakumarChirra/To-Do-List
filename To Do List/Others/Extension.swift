//
//  Extension.swift
//  To Do List
//
//  Created by shivakumar chirra on 01/08/25.
//

import Foundation

extension Encodable{
    func asDictionary () -> [String: Any] {
        guard let  data = try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted) else {
            return [:]
        }
        do{
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        }catch{
            return [:]
        }
    }
}
