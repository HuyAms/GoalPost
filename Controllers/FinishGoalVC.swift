//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by iosdev on 28.3.2018.
//  Copyright © 2018 Group-6. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointTextField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointTextField.delegate = self
    }
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }

    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        //Pass data into Core Data Goal Model
        if pointTextField.text != "" {
            self.save { (complete) in
                if (complete) {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func backButtonWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {return}
        let goal = Goal(context: managedContext)
    
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointTextField.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try managedContext.save()
            print("Successfully save data")
            completion(true)
        } catch {
            debugPrint("Cound not save \(error.localizedDescription)")
            completion(false)
        }
    }
    
}
