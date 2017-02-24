//
//  SuccessViewController.swift
//  MiraclePill
//
//  Created by Bettina on 2/23/17.
//  Copyright © 2017 Devslopes. All rights reserved.
//

import UIKit

class SuccessViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createSuccessImageView()
        // Do any additional setup after loading the view.
    }

    func createSuccessImageView()
    {
        let successImageView = UIImageView()
        
        successImageView.image = UIImage(named: "successIndicator")
        self.view.addSubview(successImageView)
        
        successImageView.translatesAutoresizingMaskIntoConstraints = false
        successImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        successImageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    
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

}
