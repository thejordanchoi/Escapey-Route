//
//  CommonRoom.swift
//  FunGame
//
//  Created by Jordan Choi on 6/18/18.
//  Copyright © 2018 Jordan Choi. All rights reserved.
//

import UIKit

class CommonRoom: UIViewController
{
    var myGameData = gameData()

    override func viewDidLoad()
    {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //seguing multiple viewcontrollers
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if(segue.identifier == "bedroomSegue")
        {
            var bedroom = segue.destination as! Bedroom
            bedroom.myGameData = self.myGameData
        }
        else if(segue.identifier == "livingroomSegue")
        {
            var livingroom = segue.destination as! LivingRoom
            livingroom.myGameData = self.myGameData
        }
        else if(segue.identifier == "bathroomSegue")
        {
            var bathroom = segue.destination as! Bathroom
            bathroom.myGameData = self.myGameData
        }
        else
        {
            var kitchen = segue.destination as! Kitchen
            kitchen.myGameData = self.myGameData
        }
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


}
