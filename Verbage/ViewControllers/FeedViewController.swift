//
//  FeedViewController.swift
//  Verbage
//
//  Created by C4Q on 4/28/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    private let feedView = FeedView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(feedView)

    }
}
