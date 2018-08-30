//
//  BookmarkTableViewCell.swift
//  DesignCodeApp
//
//  Created by WebIQ Stagiaire on 30-08-18.
//  Copyright © 2018 Lisa van der Goes. All rights reserved.
//

import UIKit

class BookmarkTableViewCell: UITableViewCell {
    @IBOutlet weak var badgeImageView: UIImageView!
    @IBOutlet weak var chapterNumberLabel: UILabel!
    @IBOutlet weak var chapterTitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
