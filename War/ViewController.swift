//
//  ViewController.swift
//  War
//
//  Created by Artur on 22/10/15.
//  Copyright © 2015 Artur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secoundCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backroundImageView: UIImageView!
    @IBOutlet weak var PlayerScore: UILabel!
    @IBOutlet weak var EnemyScore: UILabel!
   
    
    
    
    var cardNamesArray:[String] = ["card1" , "card2", "card3", "card4"]
    
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    var player = 2
    var enemy = 2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func playRoundTapped(sender: UIButton) {
    
        var firstRandomNumber:Int = Int(arc4random_uniform(4))
        var firstCardString:String = self.cardNamesArray[firstRandomNumber]
        
        var secoundRandomNumber:Int = Int(arc4random_uniform(4))
        var secoundCardString:String = self.cardNamesArray[secoundRandomNumber]
        
        self.firstCardImageView.image = UIImage(named: firstCardString)
        self.secoundCardImageView.image = UIImage(named: secoundCardString)
        
        if player != 0 && enemy != 0 {
        
        if firstRandomNumber > secoundRandomNumber {
            
            playerScoreTotal += 1
            self.PlayerScore.text = String(playerScoreTotal)

            player += 1
            enemy -= 1
            
        }
        else if firstRandomNumber == secoundRandomNumber {
            
            
            
        }
        else {
            
            enemyScoreTotal += 1
            self.EnemyScore.text = String(enemyScoreTotal)
            
            player -= 1
            enemy += 1
            
            }
            
        }
        
        else {
             playerScoreTotal = 0
            self.PlayerScore.text = String(playerScoreTotal)
            player = 2
             enemyScoreTotal = 0
            self.EnemyScore.text = String(enemyScoreTotal)
            enemy = 2
        }
    }

}

