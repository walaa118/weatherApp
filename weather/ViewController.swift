//
//  ViewController.swift
//  weather
//
//  Created by walaa gomaa on 9/11/17.
//  Copyright © 2017 walaa gomaa. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var cityNameTF: UITextField!
    @IBOutlet weak var cityInfoLbl: UILabel!
    @IBOutlet weak var wetherImg: UIImageView!
    @IBOutlet weak var tempLbl: UILabel!
    @IBOutlet weak var minMaxTemp: UILabel!
    
    let API_KEY = "&appid=d19896809561ecf08c956adbff77745f"
    let base_url = "http://api.openweathermap.org/data/2.5/forecast?q="
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func endEditingTxtFld(_ sender: UITextField) {
        let cityStr = "Egypt"
        if let finalUrl = URL(string: base_url + cityStr + API_KEY) {
            requestWeatherData(url: finalUrl)
        }else {
            
        }
    }
    
    func requestWeatherData (url : URL){
        let task = URLSession.shared.dataTask(with: url){
            (data, response,error) in
            if let urlResponse = response {
                print(urlResponse)
            }
            
            if let errorResponse = error {
                print(errorResponse)
            } else if let dataResponse = data {
                print(dataResponse)
            }
        }
        
        task.resume()
        
        Alamofire.request("https://httpbin.org/get")
            .validate(statusCode: 200..<300)
            .validate(contentType: ["application/json"])
            .responseData { response in
                switch response.result {
                case .success:
                    print("Validation Successful")
                case .failure(let error):
                    print(error)
                }
        }

    }
    
    @IBAction func todayBtnClk(_ sender: Any) {
    }
    
    
    @IBAction func tomorrowBtnClk(_ sender: Any) {
    }
    
    
}

