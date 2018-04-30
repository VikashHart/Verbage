//
//  ProfileViewController.swift
//  Verbage
//
//  Created by C4Q on 4/28/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let profileView = ProfileView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(profileView)
        
    }

}
