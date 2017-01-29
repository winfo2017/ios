//
//  MainViewController.swift
//  MentorMatch
//
//  Created by MyungJin Eun on 1/28/17.
//  Copyright © 2017 BabyShaker. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello")
        getData()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getData() {
        print("hi")
        let url : String = "http://173.250.160.196:3000/users/Bre123"
        
        let task = URLSession.shared.dataTask(with: URL(string: url)!) { (data, response, error) -> Void in
            let HTTPResponse = response as! HTTPURLResponse
            let statusCode = HTTPResponse.statusCode
            print(HTTPResponse)
            print(statusCode)
            if (statusCode == 200) {
                
            }
        }
        
        task.resume()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
