//
//  LivingRoom.swift
//  FunGame
//
//  Created by Jordan Choi on 6/18/18.
//  Copyright © 2018 Jordan Choi. All rights reserved.
//

import UIKit

class LivingRoom: UIViewController
{
    var myGameData = gameData()
    @IBOutlet weak var useKeyButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        useKeyButton.isHidden = true
        
        if(myGameData.hasKey)
        {
            useKeyButton.isHidden = false
        }

        // Do any additional setup after loading the view.
    }

    @IBAction func onUseKeyButtonTapped(_ sender: UIButton)
    {
        myGameData.escaped = true
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if(segue.identifier == "commonroomSegue")
        {
            var commonRoom = segue.destination as! CommonRoom
            commonRoom.myGameData = self.myGameData
        }
    }
}
