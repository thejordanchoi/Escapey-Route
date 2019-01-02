//
//  Bedroom.swift
//  FunGame
//
//  Created by Jordan Choi on 6/18/18.
//  Copyright © 2018 Jordan Choi. All rights reserved.
//

import UIKit

class Bedroom: UIViewController
{
    var myGameData = gameData()

    @IBOutlet weak var plungerLabel: UILabel!
    @IBOutlet weak var plungerButton: UIButton!
    @IBOutlet weak var plungerPrompt: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        plungerPrompt.isHidden = true
        if(myGameData.hasPlunger == true)
        {
            plungerLabel.isHidden = true
            plungerButton.isHidden = true
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onPlungerButtonTapped(_ sender: UIButton)
    {
        myGameData.hasPlunger = true
        plungerPrompt.isHidden = false
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        var commonRoom = segue.destination as! CommonRoom
        commonRoom.myGameData = self.myGameData
    }

}
