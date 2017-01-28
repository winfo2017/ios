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
        
        form = Section("Personal details")
            <<< TextRow(){ row in
                row.title = "Name"
                row.placeholder = "Boatey McBoatFace"
            }
            <<< DateRow(){
                $0.title = "Experiences"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
        
            }
            +++ Section("Interests")
            <<< TextRow(){ row in
                row.title = "Name"
                row.placeholder = "Boatey McBoatFace"
        }
        
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

