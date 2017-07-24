//
//  ViewController.swift
//  War_Game
//
//  Created by student on 7/23/17.
//  Copyright © 2017 shu'scompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!

    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftscore = 0
    var rightscore = 0
    let cardnames = ["card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen", "king","ace"] //in sequence increasing
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dealTapped(_ sender: Any) {
        //Randomize left and right number from 0 to 12
        
        let leftnumber = Int(arc4random_uniform(13))
        let rightnumber = Int(arc4random_uniform(13))

       // leftImageView.image=UIImage(named: "card\(leftnumber)")
        // rightImageView.image=UIImage(named: "card10\(rightnumber)")

        leftImageView.image=UIImage(named:cardnames[leftnumber])
        rightImageView.image=UIImage(named:cardnames[rightnumber])
        
        //Compare the card numbers 
        if leftnumber > rightnumber{
            //left wins
            
            //INcrement the score
          leftscore += 1
            
            //Update the label
            leftScoreLabel.text = String(leftscore)
            
        }
        else if leftnumber == rightnumber{
            //It's a tie
        }
        else{
            //Right card wins
            //INcrement the score
            rightscore += 1
            
            //Update the label
           rightScoreLabel.text = String(leftscore)
        }
        
        
        
        
        
    }
    
}

