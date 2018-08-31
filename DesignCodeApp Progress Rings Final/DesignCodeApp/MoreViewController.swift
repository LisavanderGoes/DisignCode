//
//  MoreViewController.swift
//  DesignCodeApp
//
//  Created by Tiago Mergulhão on 14/01/18.
//  Copyright © 2018 Meng To. All rights reserved.
//

import UIKit
import MKRingProgressView

class MoreViewController: UIViewController {

    @IBOutlet weak var progress1View: MKRingProgressView!
    @IBOutlet weak var progress2View: MKRingProgressView!
    @IBOutlet weak var progress3View: MKRingProgressView!
    @IBOutlet weak var progress1Label: UILabel!
    @IBOutlet weak var progress2Label: UILabel!
    @IBOutlet weak var progress3Label: UILabel!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let progresses = [72,56,22]

        progress1Label.animateTo(progresses[0])
        progress2Label.animateTo(progresses[1])
        progress3Label.animateTo(progresses[2])

        progress1View.animateTo(progresses[0])
        progress2View.animateTo(progresses[1])
        progress3View.animateTo(progresses[2])
    }

    @IBAction func safariButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "More to Web", sender: "https://designcode.io")
    }
    @IBAction func communityButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "More to Web", sender: "https://spectrum.chat/design-code")
    }
    @IBAction func twitterHandleTapped(_ sender: Any) {
        performSegue(withIdentifier: "More to Web", sender: "https://twitter.com/mengto")
    }
    @IBAction func emailButtonTapped(_ sender: Any) {
        let email = "meng@designcode.io"
        if let url = URL(string: "mailto:\(email)") {
            UIApplication.shared.open(url)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let identifier = segue.identifier, identifier == "More to Web" {
            let toNav = segue.destination as! UINavigationController
            let toVC = toNav.viewControllers.first as! WebViewController
            toVC.urlString = sender as! String
        }
    }
}

extension MKRingProgressView {
    func animateTo(_ number : Int) {

        CATransaction.begin()
        CATransaction.setAnimationDuration(1.0)

        self.progress = Double(number)/100

        CATransaction.commit()
    }
}
