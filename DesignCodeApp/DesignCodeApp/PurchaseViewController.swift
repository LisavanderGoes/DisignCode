//
//  PurchaseViewController.swift
//  DesignCodeApp
//
//  Created by WebIQ Stagiaire on 31-08-18.
//  Copyright © 2018 Lisa van der Goes. All rights reserved.
//

import UIKit

class PurchaseViewController: UIViewController {
    @IBOutlet var panToClose: InteractionPanToClose!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        panToClose.setGestureRecognizer()
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
