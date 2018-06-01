//
//  SettingsViewController.swift
//  iCatchUp
//
//  Created by Alumnos on 5/28/18.
//  Copyright © 2018 Alumnos. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testConnectivity()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    //COMO VINCULAR SWITFYJSON SON ALAMOFIRE
    func testConnectivity(){
        let parameters = ["apikey": NewsApi.key, "country": "us"]
        Alamofire.request(NewsApi.topHeadlinaUrl, parameters: parameters)
            .validate().responseJSON(completionHandler: { response in
                switch response.result{
                case .success(let value):
                    let json = JSON(value)
                    print(json)
                    let status = json["status"].stringValue
                    if status == "ok"{
                        let articles = Article.buildAll(from:
                            json["articles"].arrayValue)
                        print("Found \(articles.count) Articles")
                    }
                case .failure(let error):
                    print("Networking Error: \(error.localizedDescription)")
                }
            })
    }
}
