//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        addNameToDeliLine("Meg Ryan")
        nowServing()
        deliLineDescription()
    }

   
    
    
    // Create your methods here
    func addNameToDeliLine(name: String) -> String {
        if name == "Billy Crystal"  {
            deliLine.insert(name, atIndex: 0)
            return "Welcome Billy! You can sit wherever you like."
        } else if name == "Meg Ryan"{
            deliLine.insert(name, atIndex: 0)
            return "Welcome Meg! You can sit wherever you like."
        } else  {
            deliLine.append(name)
            if deliLine.count == 1 {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(deliLine.count) in line."
            }
        }
        
    }
    
    func nowServing() -> String {
        if deliLine.count == 0 {
            return "There is no-one to be served."
        } else {
            let firstPerson = deliLine[0]
            deliLine.removeFirst()
            return "Now serving \(firstPerson)!"
        }
    }
    
    func deliLineDescription() -> String {
        if deliLine.count == 0 {
            return "The line is currently empty."
        } else {
            var lineContents = "The line is:"
            for (index, person) in deliLine.enumerate() {
                lineContents.appendContentsOf("\n\(index+1). \(person)")
            }
            return lineContents
        }
    }
}