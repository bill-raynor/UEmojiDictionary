//
//  ViewController.swift
//  UEmoji Dictionary
//
//  Created by Bill Raynor on 5/30/17.
//  Copyright © 2017 Raynor Statistics. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var EmojiTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        EmojiTableView.dataSource = self
        EmojiTableView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

