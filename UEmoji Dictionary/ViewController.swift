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
    
//    var emojis=["🤠","😀","©","⌘","∈","⫫","Α","ω","∫","√","𝜒","🤡","🤞🏿","👩‍👧‍👧","🐑","♏️","🇨🇫","⎈"]
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        EmojiTableView.dataSource = self
        EmojiTableView.delegate = self
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🤠"
        emoji1.definition = "Cowboy hat emoji"
        emoji1.category = "Smiley"
        emoji1.birthyear = 1910

        let emoji2 = Emoji()
        emoji2.stringEmoji = "😀"
        emoji2.definition = "standard Smiley"
        emoji2.category = "Smiley"
        emoji2.birthyear = 2910
        
        return [emoji1, emoji2]

    }

}

