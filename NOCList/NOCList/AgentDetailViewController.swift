//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Jake Connerly on 5/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {
    
    //
    // MARK: - Outlets and Properties
    //

    @IBOutlet weak var coverNameLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var levelNumberLabel: UILabel!
    @IBOutlet weak var compromisedLabel: UILabel!
    
    var agent: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)?
    
    //
    // MARK: - View LifeCycle
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        
    }
    
    //
    //MARK: - Methods
    //
    
    private func updateViews() {
        guard let agent = agent else { return }
        title = agent.coverName
        coverNameLabel.text = agent.coverName
        realNameLabel.text = agent.realName
        levelNumberLabel.text = String(agent.accessLevel)
        
        if agent.compromised == true {
            view.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)
            
            self.compromisedLabel.isHidden = false
        }else {
            view.backgroundColor = .white
            self.compromisedLabel.isHidden = true
        }
    }
    
}
