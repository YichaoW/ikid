//
//  ViewController.swift
//  iKid
//
//  Created by Yichao Wang on 4/30/17.
//  Copyright © 2017 Yichao Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var goodLabel: UILabel!
    @IBOutlet weak var punimg: UIImageView!
    @IBOutlet weak var dadLabel: UILabel!
    @IBOutlet weak var knockLabel: UILabel!
    var knockTime = 0;

    @IBAction func goodPressed(_ sender: UIButton) {
        if (sender.titleLabel!.text == "Next") {
            UIView.transition(with: goodLabel, duration: 0.5, options: .transitionFlipFromLeft, animations: {
                self.goodLabel.text = "My name is Paul."
            }, completion: nil)
            sender.setTitle("Back", for: .normal)
        } else {
            UIView.transition(with: goodLabel, duration: 0.5, options: .transitionFlipFromLeft, animations: {
                self.goodLabel.text = "Anton, do you think I’m a bad mother?"
            }, completion: nil)
            sender.setTitle("Next", for: .normal)
        }
    }
    
    @IBAction func punPressed(_ sender: UIButton) {
        if sender.titleLabel!.text == "Next" {
            UIView.transition(with: punimg, duration: 0.5, options: .transitionFlipFromLeft, animations: {
                self.punimg.image = UIImage(named: "2.png")
            }, completion: nil)
            sender.setTitle("Back", for: .normal)
        } else {
            UIView.transition(with: punimg, duration: 0.5, options: .transitionFlipFromLeft, animations: {
                self.punimg.image = UIImage(named: "1.png")
            }, completion: nil)
            sender.setTitle("Next", for: .normal)
        }
    }
       
    @IBAction func dadPressed(_ sender: UIButton) {
        if sender.titleLabel!.text == "Next" {
            UIView.transition(with: dadLabel, duration: 0.5, options: .transitionFlipFromLeft, animations: {
                self.dadLabel.text = "Don't call me later, call me Dad."
            }, completion: nil)
            sender.setTitle("Back", for: .normal)
        } else {
            UIView.transition(with: dadLabel, duration: 0.5, options: .transitionFlipFromLeft, animations: {
                self.dadLabel.text = "Ill call you later."
            }, completion: nil)
            sender.setTitle("Next", for: .normal)
        }
    }
    
    @IBAction func knockPressed(_ sender: UIButton) {
        switch knockTime {
            case 0:
                    UIView.transition(with: knockLabel, duration: 0.5, options: .transitionFlipFromLeft, animations: {
                        self.knockLabel.text = "Who's there?"
                    }, completion: nil)
                    knockTime += 1
            case 1:
                    UIView.transition(with: knockLabel, duration: 0.5, options: .transitionFlipFromLeft, animations: {
                        self.knockLabel.text = "Alien"
                    }, completion: nil)
                    knockTime += 1
            case 2:
                    UIView.transition(with: knockLabel, duration: 0.5, options: .transitionFlipFromLeft, animations: {
                        self.knockLabel.text = "Alien who?"
                    }, completion: nil)
                    knockTime += 1
            case 3:
                    UIView.transition(with: knockLabel, duration: 0.5, options: .transitionFlipFromLeft, animations: {
                        self.knockLabel.text = "Just how many aliens do you know?"
                    }, completion: nil)
                    knockTime += 1
                    sender.setTitle("Back", for: .normal)
            default:
                    UIView.transition(with: knockLabel, duration: 0.5, options: .transitionFlipFromLeft, animations: {
                        self.knockLabel.text = "Knock, knock. "
                    }, completion: nil)
                    knockTime = 0
                    sender.setTitle("Next", for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

