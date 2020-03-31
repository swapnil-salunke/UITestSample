//
//  LaunchViewController.swift
//  UITestSample
//
//  Created by Salunke, Swapnil Uday (US - Mumbai) on 30/03/20.
//  Copyright © 2020 Swapnil Salunke. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

    @IBAction func closeModal(unwindSeque: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var launchButton : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Launch Screen"
        view.accessibilityIdentifier = "launchScreenView"
    }
}

