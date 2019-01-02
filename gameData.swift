//
//  File.swift
//  FunGame
//
//  Created by Jordan Choi on 6/18/18.
//  Copyright © 2018 Jordan Choi. All rights reserved.
//

//plunger is found in bedroom
//key is found in kitchen after plunging toilet

import Foundation

class gameData
{
    var hasKey: Bool
    var hasPlunger: Bool
    var plungedToilet: Bool
    var keyAvailable: Bool
    var escaped: Bool
    
    init()
    {
        hasKey = false
        hasPlunger = false
        keyAvailable = false
        plungedToilet = false
        escaped = false
    }
}
