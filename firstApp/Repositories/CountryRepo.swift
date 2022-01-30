//
//  CountryRepo.swift
//  firstApp
//
//  Created by Adam Roberts on 1/27/22.
//

import Foundation
class CountryRepo
{
    func getCountries()->[Country]{
        var countries = [Country]()
        countries.append(Country(image: "camera", name: "US", desc: "50 States"))
        countries.append(Country(image: "camera", name: "India", desc: "8 Territories"))
        countries.append(Country(image: "camera", name: "Australia", desc: "6 States"))
        countries.append(Country(image: "camera", name: "Canada", desc: "9 Territories"))
        
        return countries
    }
    
}
