//
//  ChapterListTableViewCell.swift
//  TestTextbook
//
//  Created by FDCBele on 1/28/23.
//

import UIKit

class ChapterListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var chapterTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
