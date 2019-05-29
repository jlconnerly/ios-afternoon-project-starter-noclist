//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Jake Connerly on 5/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {

    @IBOutlet weak var coverNameLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var levelNumberLabel: UILabel!
    @IBOutlet weak var compromisedLabel: UILabel!
    
    var agent: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = agent.coverName
        coverNameLabel.text = agent.coverName
        realNameLabel.text = agent.realName
        levelNumberLabel.text = String(agent.accessLevel)
        
        // MARK: - Hiding Compromised Label
        
        if agent.compromised == true {
            self.compromisedLabel.isHidden = false
        }else {
            self.compromisedLabel.isHidden = true
        }
    }
    
}
