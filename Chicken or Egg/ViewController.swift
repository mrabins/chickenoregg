//
//  ViewController.swift
//  Chicken or Egg
//
//  Created by Mark Rabins on 4/22/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var chickenOrEggLabel: UILabel!
    @IBOutlet weak var chickenLabel: UILabel!
    @IBOutlet weak var eggLabel: UILabel!
    @IBOutlet weak var ourSwitch: UISwitch!
    @IBOutlet weak var findOutButton: UIButton!
    @IBOutlet weak var resultsLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.brownColor()
        
        chickenOrEggLabel.backgroundColor = UIColor.yellowColor()
        chickenOrEggLabel.textAlignment = NSTextAlignment.Center
        chickenOrEggLabel.textColor = UIColor.brownColor()
        chickenOrEggLabel.text = "Chicken or Egg?"
        chickenOrEggLabel.font = chickenOrEggLabel.font.fontWithSize(30)
        
        chickenLabel.text = "Chicken"
        chickenLabel.textColor = UIColor.yellowColor()
        eggLabel.text = "Egg"
        eggLabel.textColor = UIColor.yellowColor()
        findOutButton.backgroundColor = UIColor.yellowColor()
        findOutButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        findOutButton.setTitle("Find Out", forState: UIControlState.Normal)
        resultsLabel.textColor = UIColor.yellowColor()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func findOutButtonTapped(sender: UIButton) {
        var chickenSwitchOptional: Bool?
        
        chickenSwitchOptional = ourSwitch.on
        let egg: Bool = chickenSwitchOptional ?? true
        
        let results: String = egg ? "Egg" : "Chicken"
        resultsLabel.text = results
        
        
        
    }

    
    
    
}

