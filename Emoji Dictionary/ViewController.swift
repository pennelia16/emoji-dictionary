//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by coop on 2020-05-05.
//  Copyright © 2020 coop. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // TODO create animals and nature enum?
    
    var emojis: [Emoji] = []
    
    func initEmojiArray() {
        let emoji1 = Emoji(string: "🔥", description: "A flame", category: "Animals & Nature", addedYear: 2010)
        let emoji2 = Emoji(string: "🦊", description: "A friendly fox", category: "Animals & Nature", addedYear: 2016)
        let emoji3 = Emoji(string: "🗻", description: "Mount Fuji", category: "Travel & Places", addedYear: 2010)
        emojis = [emoji1, emoji2, emoji3]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        print(emojis[indexPath.row].string)
        cell.textLabel?.text = emojis[indexPath.row].string
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        initEmojiArray()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "showDefinition", sender: emojis[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let definitionVC = segue.destination as! DefinitionViewController
        definitionVC.emoji = sender as! Emoji
    }
    
    @IBOutlet weak var tableView: UITableView!
    
}

