//
//  ItemStore.swift
//  Homepwner
//
//  Created by Stephen Atwood on 3/16/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ItemStore {
    
    var allItems = [Item]()
    
    init() {
        
    }
    
    
    func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    
    
    
}
