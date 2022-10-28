//
//  Item.swift
//  i-List
//
//  Created by Ahmed Musa on 8/11/2016.
//  Copyright © 2016 Moses Apps. All rights reserved.
//

import Foundation
class Item: NSObject, NSCoding {
    
    var name: String
    
    init?(name: String) {
        self.name = name
        super.init()
    }
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(name, forKey: "name")
    }
    required convenience init?(coder aDecoder: NSCoder){
        let name = aDecoder.decodeObjectForKey("name") as! String
        self.init(name: name)
    }
    static let Dir = NSFileManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first!
    
    static let ArchiveURL = Dir.URLByAppendingPathComponent("items")
}