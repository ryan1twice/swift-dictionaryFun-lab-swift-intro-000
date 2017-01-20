//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1.
    var favoriteFlavorsOfIceCream = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
    
    // 2.
    func names(forFlavor: String) -> [String] {
        var names = [String]()
        
        for (name, flavor) in favoriteFlavorsOfIceCream {
            if flavor == forFlavor {
                names.append(name)
            }
        }
        return names
    }
    
    // 3.
    func count(forFlavor:String) -> Int {
        var count = 0
        for (_, flavor) in favoriteFlavorsOfIceCream {
            if flavor == forFlavor {
                count += 1
            }
        }
        
        return count
    }

    // 4.
    func flavor(forPerson: String) -> String? {
        for (name, flav) in favoriteFlavorsOfIceCream {
            if name == forPerson {
                return flav
            }
        }
        return nil
    }

    // 5.
    func replace(flavor: String, forPerson: String) -> Bool {
        for (name, _) in favoriteFlavorsOfIceCream {
            if name == forPerson {
                favoriteFlavorsOfIceCream[name] = flavor
                return true
            }
        }
        return false
    }
   
    // 6.
    func remove(person: String) -> Bool {
        for (name, _) in favoriteFlavorsOfIceCream {
            if name == person {
                favoriteFlavorsOfIceCream.removeValue(forKey: person)
                return true
            }
        }
        
        return false
    }
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    // 8.
    func add(person: String, withFlavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            return false
        } else {
            favoriteFlavorsOfIceCream[person] = withFlavor
            return true
        }
    }
    
    // 9.
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var stringNames = ""
     
        
        for name in allNames {
            if favoriteFlavorsOfIceCream[name] != nil {
                stringNames += "\(name) likes \(favoriteFlavorsOfIceCream[name]!)\n"
            } else {
                return "Error in attendeeList()"
            }
        }
    
        // Pop last \n from the names
        stringNames = stringNames.substring(to: stringNames.index(before: stringNames.endIndex))

        return stringNames
    }
}
