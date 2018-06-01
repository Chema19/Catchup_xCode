//
//  NewsApi.swift
//  iCatchUp
//
//  Created by Alumnos on 5/21/18.
//  Copyright © 2018 Alumnos. All rights reserved.
//

import Foundation

class NewsApi{
    static let baseUrl = "https://newsapi.org"
    
    public static var topHeadlinaUrl: String{
        return "\(baseUrl)/v2/top-headlines"
    }
    
    public static var everythingUrl: String{
        return "\(baseUrl)/v2/everything"
    }
    
    public static var sourceUrl: String{
        return "\(baseUrl)/v2/sources"
    }
    
    public static var key:String{
        return Bundle.main.object(forInfoDictionaryKey: "NewsApiKey") as! String
    }
}
