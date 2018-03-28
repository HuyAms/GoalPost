//
//  ViewController.swift
//  GoalPost
//
//  Created by iosdev on 28.3.2018.
//  Copyright © 2018 Group-6. All rights reserved.
//

import UIKit
import CoreData

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

 
    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        print("button was pressed")
    }
    
}

