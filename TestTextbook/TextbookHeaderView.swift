//
//  TextbookHeaderView.swift
//  TestTextbook
//
//  Created by FDCBele on 1/28/23.
//

import UIKit

class TextbookHeaderView: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var subcategoryButton: UIButton!
    
    private var mListener : OnSubcategoryClick?
    
    @IBAction func onTapSubcategory(_ sender: UIButton) {
        self.mListener?.onSubcatClick()
    }
    
    func setListener(listener : OnSubcategoryClick) {
        self.mListener = listener
    }
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
        if let viewToAdd = bundle.loadNibNamed("TextbookHeaderView", owner: self, options: nil), let contentView = viewToAdd.first as? UIView {
            addSubview(contentView)
            contentView.frame = self.bounds
            contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
    }
}
