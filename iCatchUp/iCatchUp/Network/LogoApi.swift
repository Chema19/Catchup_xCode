//
//  LogoApi.swift
//  iCatchUp
//
//  Created by Alumnos on 5/21/18.
//  Copyright © 2018 Alumnos. All rights reserved.
//

import Foundation

class LogoApi{
    static let baseUrl = "https://logo.clearbit.com/"
    
    public static func urlToLogo(forString string:String) -> String{
        if let url = URL(string: string){
            return "\(baseUrl)\(url.host!)"
        }
        return "\(baseUrl)\(string)"
    }
}
