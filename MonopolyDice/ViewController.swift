//
//  ViewController.swift
//  MonopolyDice
//
//  Created by Diem Phuc Nguyen on 6/19/18.
//  Copyright © 2018 Diem Phuc Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myFirstDice: UIImageView!
    @IBOutlet weak var mySecondDice: UIImageView!
    @IBOutlet weak var myDisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func rollDiceButton(_ sender: Any) {
        var firstNum:Int = Int(arc4random_uniform(5)) + 1;
        var secondNum:Int = Int(arc4random_uniform(5)) + 1;
        var firstImg: String = "";
        var secondImg: String = "";
        
        firstImg = "dice\(firstNum).jpg";
        secondImg = "dice\(secondNum).jpg";
        
        myFirstDice.image = UIImage(named: firstImg);
        mySecondDice.image = UIImage(named: secondImg);
        
        if (firstNum == secondNum) {
            myDisplayLabel.textColor = UIColor.red;
        }
        else {
            myDisplayLabel.textColor = UIColor.black;
        }
        myDisplayLabel.text = String(firstNum+secondNum);
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

