//
//  OnboardingController2.swift
//  UITestSample
//
//  Created by Salunke, Swapnil Uday (US - Mumbai) on 30/03/20.
//  Copyright © 2020 Swapnil Salunke. All rights reserved.
//

import UIKit

class OnboardingController2: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "secondOnboarding.Title".localized()
        view.accessibilityIdentifier = "secondOnboarding"
        // Do any additional setup after loading the view.
        setupTableView()
    }
    
    func setupTableView () {
        tableView.register(UINib(nibName: "HeaderViewCell", bundle: nil), forCellReuseIdentifier: "header")
        tableView.register(UINib(nibName: "DescriptionViewCell", bundle: nil), forCellReuseIdentifier: "description")
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 200
    }
}
extension OnboardingController2 : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "header", for: indexPath) as? HeaderViewCell
                cell?.headerLabel?.text = "secondOnboarding.Title".localized()
                return cell ?? UITableViewCell()
            
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: "description") as?
                DescriptionViewCell
                cell?.descriptionLabel.text = "secondOnboarding.Description".localized() + "lorem.Ipsum.Text".localized()
                return cell ?? UITableViewCell()
        }
    }
    
    
}
