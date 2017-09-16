//
//  WaetherStruct.swift
//  weather
//
//  Created by walaa gomaa on 9/14/17.
//  Copyright © 2017 walaa gomaa. All rights reserved.
//

import Foundation


struct  WeatherStruct {
    
}

struct  City {
    let name :  String
    let country : String
}

struct  WeatherDataPoint  {
    let main : Temperature
    let dt_txt : String
    let weather : [weatherIconData]
}


struct Temperature {
    let temp : Double
    let temp_min : Double
    let temp_max : Double
}

struct  weatherIconData  {
    let icon : String
}

