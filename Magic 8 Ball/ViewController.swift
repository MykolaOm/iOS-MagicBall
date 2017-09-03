//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Nikolas Omelianov on 03.09.17.
//  Copyright © 2017 Nikolas Omelianov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    @IBOutlet weak var ballImageView: UIImageView!
    var randomBallNumber : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setRadnomBallNumber()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func askButtonPressed(_ sender: UIButton) {
        setRadnomBallNumber()
    }

    func setRadnomBallNumber(){
        randomBallNumber = Int(arc4random_uniform(5))
        ballImageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        setRadnomBallNumber()
    }
}

