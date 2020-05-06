//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by coop on 2020-05-05.
//  Copyright © 2020 coop. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
    var emoji: Emoji = Emoji()
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.string
        emojiDescriptionLabel.text = emoji.description
        emojiCategoryLabel.text = "Category: \(emoji.category)"
        emojiAddedYearLabel.text = "Year added: \(emoji.addedYear)"
    }

    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDescriptionLabel: UILabel!
    
    @IBOutlet weak var emojiCategoryLabel: UILabel!
    
    @IBOutlet weak var emojiAddedYearLabel: UILabel!
}
