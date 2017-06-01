//
//  DefinitionViewController.swift
//  UEmoji Dictionary
//
//  Created by Bill Raynor on 6/1/17.
//  Copyright © 2017 Raynor Statistics. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "No Emoji"

    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // print(emoji)
        
        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        definitionLabel.text = "Hello"
        
        if emojiLabel.text == "🤠"{
            definitionLabel.text = "Cowboy"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
