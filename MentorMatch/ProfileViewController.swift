//
//  SecondViewController.swift
//  MentorMatch
//
//  Created by MyungJin Eun on 1/28/17.
//  Copyright © 2017 BabyShaker. All rights reserved.
//

import UIKit
import Eureka
import Alamofire
import SwiftyJSON

class ProfileViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        sendValues()
        form = Section("Personal details")
            <<< TextRow(){ row in
                row.title = "Name"
                row.placeholder = "Boatey McBoatFace"
            }
            
            <<< SegmentedRow<String>(){
                $0.title = "Gender"
                $0.options = ["Male", "Female", "Other"]
                }.cellSetup { cell, row in
                    cell.imageView?.image = UIImage(named: "plus_image")
            }
            
            +++ Section("Interests")
            <<< TextRow(){ row in
                row.title = "Interests"
                row.placeholder = "What are you interested in?"
            }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Send form values to the backend
    func sendValues() {
        
        let url = "http://173.250.160.196:3000/users/333/"
        Alamofire.request(url).responseJSON(completionHandler: {response in
            print(response.response ?? "no response")
            let json = JSON(data: response.result.value as! Data)
            
            if let JSON = response.result.value {
                print(JSON)
            }
        });
    }
}

