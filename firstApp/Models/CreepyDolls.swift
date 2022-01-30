//
//  CreepyDolls.swift
//  firstApp
//
//  Created by Adam Roberts on 1/27/22.
//

import Foundation
class CreepyDolls
{
    var dollName: String
    var dollKillCount: Int
    var dollImage: String
    
    init(image: String, name: String, killCount: Int){
        dollName = name;
        dollKillCount = killCount
        dollImage = image
    }

}
