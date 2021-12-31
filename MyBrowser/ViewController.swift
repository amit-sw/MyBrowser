//
//  ViewController.swift
//  MyBrowser
//
//  Created by Amit Gupta on 12/31/21.
//

import UIKit
import WebKit
import SafariServices

class ViewController: UIViewController {

    var targetUrl="https://sites.google.com/view/aura-resources/home"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Starting ViewDidLoad")
        print("Ending ViewDidLoad")
    }
    
    @IBAction func submitPressed(_ sender: Any) {

        if let url = URL(string:targetUrl) {
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true

            let vc = SFSafariViewController(url: url, configuration: config)
            present(vc, animated: true)
        }
        print("Finishing ViewDidAppear")
    }


}

