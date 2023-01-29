//
//  TextbookListViewCell.swift
//  TestTextbook
//
//  Created by FDCBele on 1/28/23.
//

import UIKit

class TextbookListViewCell: UITableViewCell {

    @IBOutlet weak var textbookImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
