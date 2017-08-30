//
//  Pet.swift
//  PetFinder
//
//  Created by Alisha Fong on 8/30/17.
//  Copyright © 2017 Alisha Fong. All rights reserved.
//

import UIKit

class Pet
{
    var name: String
    var gender: String
    var age: String
    var description: String
    var location: String
    var phone: String
    var image: UIImage
    
    init(n: String, g: String, a: String, d: String, l: String, p: String, i: String) {
        name = n
        gender = g
        age = a
        description = d
        location = l
        phone = p
        image = #imageLiteral(resourceName: "defaultPet")
        
        image = getImage(url: i)
    }
    
    func getImage(url: String) -> UIImage
    {
        
        if let url = NSURL(string: url)
        {
            if let data = NSData(contentsOf: url as URL)
            {
              return UIImage(data: data as Data)!
            }
        }
        return #imageLiteral(resourceName: "defaultPet")
    }
}
