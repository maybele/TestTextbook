//
//  NoTextbookView.swift
//  TestTextbook
//
//  Created by FDCBele on 1/30/23.
//

import UIKit

class NoTextbookView: UIView {

    @IBOutlet weak var noTextbookLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.commonInit()
    }
    
    private func commonInit() {
        let bundle = Bundle.init(for: TextbookHeaderView.self)
        if let viewToAdd = bundle.loadNibNamed("NoTextbookView", owner: self, options: nil), let contentView = viewToAdd.first as? UIView {
            addSubview(contentView)
            contentView.frame = self.bounds
            contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
    }
}
