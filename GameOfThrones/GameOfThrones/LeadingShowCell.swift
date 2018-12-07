//
//  LeadingShowCell.swift
//  GameOfThrones
//
//  Created by Jeffrey Almonte on 11/20/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class LeadingShowCell: UITableViewCell {

      @IBOutlet weak var leadingImage: UIImageView!
        @IBOutlet weak var leadingEpisodeName: UILabel!
    @IBOutlet weak var leadingEpisodeNumber: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
