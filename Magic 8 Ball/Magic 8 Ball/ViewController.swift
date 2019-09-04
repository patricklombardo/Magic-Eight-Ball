//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Patrick Lombardo on 8/18/19.
//  Copyright © 2019 Patrick Lombardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let balls = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var askButton: UIButton!
    @IBOutlet weak var eightBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func askButtonClicked(_ sender: Any) {
        shakeBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        shakeBall()
    }
    
    func shakeBall() {
        eightBall.image = UIImage(named: balls[Int.random(in: 0 ... 4)])
    }
    
}

