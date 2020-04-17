//
//  ViewController.swift
//  RKTest5
//
//  Created by Shally on 8/4/20.
//  Copyright © 2020 Shally. All rights reserved.
//

import UIKit
import ResearchKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
    }

    @IBAction func consentTapped(sender:AnyObject) {
        let taskViewController = ORKTaskViewController (task: ConsentTask, taskRun: nil)
        taskViewController.delegate = self
        present(taskViewController, animated: true, completion: nil)
    }
}

extension ViewController: ORKTaskViewControllerDelegate {
    func taskViewController(_ taskViewController: ORKTaskViewController, didFinishWith reason: ORKTaskViewControllerFinishReason, error: Error?) {
        taskViewController.dismiss(animated: true,completion:nil)
    }

}


