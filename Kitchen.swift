 //
//  Kitchen.swift
//  FunGame
//
//  Created by Jordan Choi on 6/18/18.
//  Copyright © 2018 Jordan Choi. All rights reserved.
//

import UIKit

class Kitchen: UIViewController
{
    var myGameData = gameData()
    
    
    @IBOutlet weak var keyHint: UILabel!
    @IBOutlet weak var keyPrompt: UILabel!
    @IBOutlet weak var keyButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        keyHint.isHidden = true
        keyPrompt.isHidden = true
        keyButton.isHidden = true
        
        if(myGameData.keyAvailable && !myGameData.hasKey)
        {
            keyHint.isHidden = false
            keyButton.isHidden = false
        }
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onKeyButtonPressed(_ sender: UIButton)
    {
        keyPrompt.isHidden = false
        myGameData.hasKey = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        var commonRoom = segue.destination as! CommonRoom
        commonRoom.myGameData = self.myGameData
    }
}
