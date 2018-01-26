//
//  ViewController.swift
//  TutoSwiftAPI
//
//  Created by Sébastien Gaya on 26/01/2018.
//  Copyright © 2018 Sébastien Gaya. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Alamofire.request("https://api.sebastiengaya.fr/tuto").responseJSON { response in
            if response.result.isSuccess {
                let json = JSON(response.result.value!)
                print(json)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

