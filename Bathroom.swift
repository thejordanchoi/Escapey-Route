//
//  Bathroom.swift
//  FunGame
//
//  Created by Jordan Choi on 6/18/18.
//  Copyright © 2018 Jordan Choi. All rights reserved.
//

import UIKit

class Bathroom: UIViewController
{
    var myGameData = gameData()
    
    @IBOutlet weak var toiletProblem: UILabel!
    @IBOutlet weak var plungeToiletButton: UIButton!
    @IBOutlet weak var plungeToiletPrompt: UILabel!
    
    
    override func viewDidLoad()
    {
        plungeToiletPrompt.isHidden = true
        plungeToiletButton.isHidden = true
        if(myGameData.plungedToilet == false)
        {
            toiletProblem.isHidden = false
        }
        else
        {
            toiletProblem.isHidden = true
            plungeToiletButton.isHidden = true
        }
        super.viewDidLoad()
        if(myGameData.hasPlunger && !myGameData.plungedToilet)
        {
            plungeToiletButton.isHidden = false
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onPlungeToiletButtonTapped(_ sender: UIButton)
    {
        myGameData.plungedToilet = true
        plungeToiletPrompt.isHidden = false
        myGameData.keyAvailable = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        var commonRoom = segue.destination as! CommonRoom
        commonRoom.myGameData = self.myGameData
    }
}
