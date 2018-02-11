//
//  ViewWeb.swift
//  HelloWorld
//
//  Created by Laura Carrillo on 2/11/18.
//  Copyright © 2018 Chaselyn Baca. All rights reserved.
//

import UIKit

class ViewWeb: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
@IBAction func web(_ sender: Any) {
   // if let web = URL(string: "https://www.webmd.com") {
        //UIApplication.shared.canOpenURL(web)
        
       // UIApplication.shared.open(web, options: [:], completionHandler:nil)
    UIApplication.shared.open(URL(string : "http://www.webmd.com")!, options: [:], completionHandler: { (status) in
        
    })
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    }
    
}

