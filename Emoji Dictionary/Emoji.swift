//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by coop on 2020-05-05.
//  Copyright © 2020 coop. All rights reserved.
//

class Emoji {
    var string = ""
    var description = ""
    var category = ""
    var addedYear = 0
    
    init() {
        
    }
    
    init(string: String, description: String, category: String, addedYear: Int) {
        self.string = string
        self.description = description
        self.category = category
        self.addedYear = addedYear
    }
}
