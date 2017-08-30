//
//  FirstViewController.swift
//  PetFinder
//
//  Created by Alisha Fong on 8/29/17.
//  Copyright © 2017 Alisha Fong. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var animal: UITextField!
    @IBOutlet weak var location: UITextField!
    
    var animalString = ""
    var locationString = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func search(_ sender: UIButton)
    {
        if let anim = animal.text
        { animalString = anim }
        if let zip = location.text
        { locationString = zip }
        
        let destinationViewController = present
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController {
            destination.animal = animalString
            destination.location = locationString
        }
    }
    

}

