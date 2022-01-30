//
//  DollRepo.swift
//  firstApp
//
//  Created by Adam Roberts on 1/27/22.
//

import Foundation
import Foundation
class DollRepo
{
    func getDolls()->[CreepyDolls]{
        var dolls = [CreepyDolls]()
        dolls.append(CreepyDolls(image: "cracky", name: "Cracky", killCount: 3))
        dolls.append(CreepyDolls(image: "Methany", name: "Methany", killCount: 400 ))
        dolls.append(CreepyDolls(image: "Billy", name: "Billy", killCount: 14 ))
        dolls.append(CreepyDolls(image: "turner", name: "Turner", killCount: 0 ))
        
        return dolls
    }
    
}
