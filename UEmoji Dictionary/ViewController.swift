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
    
    var emojis=["🤠","😀","©","⌘","∈","⫫","Α","ω","∫","√","𝜒","🤡","🤞🏿","👩‍👧‍👧","🐑","♏️","🇨🇫","⎈"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        EmojiTableView.dataSource = self
        EmojiTableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! String

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

