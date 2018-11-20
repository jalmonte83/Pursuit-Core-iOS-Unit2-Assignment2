//
//  TrailingShowCell.swift
//  GameOfThrones
//
//  Created by Jeffrey Almonte on 11/20/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class TrailingShowCell: UITableViewCell {
    @IBOutlet weak var trailingImage: UIImageView!
    @IBOutlet weak var trailingEpisodeName: UILabel!
    @IBOutlet weak var trailingEpisodeNumber: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
