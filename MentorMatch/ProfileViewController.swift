//
//  SecondViewController.swift
//  MentorMatch
//
//  Created by MyungJin Eun on 1/28/17.
//  Copyright © 2017 BabyShaker. All rights reserved.
//

import UIKit
import Eureka

class ProfileViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        MainViewController()
        
        form = Section("Personal details")
            <<< TextRow(){ row in
                row.title = "Name"
                row.placeholder = "Boatey McBoatFace"
            }
            <<< PhoneRow(){
                $0.title = "Intere"
                $0.placeholder = "And numbers here"
            }
            +++ Section("Interests")
            <<< DateRow(){
                $0.title = "Experiences"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

