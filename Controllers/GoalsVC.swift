//
//  ViewController.swift
//  GoalPost
//
//  Created by iosdev on 28.3.2018.
//  Copyright © 2018 Group-6. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

 
    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        print("button was pressed")
    }
    
}

