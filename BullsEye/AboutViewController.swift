//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Richard Garrison on 5/26/20.
//  Copyright © 2020 Richard Garrison. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var webview: WKWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let htmlPath = Bundle.main.path(forResource: "BullsEye", ofType: "html") {
        let url = URL(fileURLWithPath: htmlPath)
            let request = URLRequest(url: url)
            webview.load(request)
            
        }
    }
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }

}
