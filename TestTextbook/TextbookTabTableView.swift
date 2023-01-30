//
//  TextbookTabTableView.swift
//  TestTextbook
//
//  Created by FDCBele on 1/29/23.
//

import UIKit

class TextbookTabTableView: UIView {

    @IBOutlet weak var tabSelectionView: UIView!
    @IBOutlet weak var textbookTabButton: UIButton!
    @IBOutlet weak var courseTabButton: UIButton!
    @IBOutlet weak var favoritesTabButton: UIButton!
    
    @IBOutlet weak var textbookTabLine: UIView!
    @IBOutlet weak var courseTabLine: UIView!
    @IBOutlet weak var favoritesTabLine: UIView!
    
    @IBAction func textbookTabisClicked(_ sender: Any) {
        UIView.animate(withDuration: 0.4) {
            self.textbookTabLine.backgroundColor = .red
            self.courseTabLine.backgroundColor = .clear
            self.favoritesTabLine.backgroundColor = .clear
        }
    }
    
    @IBAction func courseTabisClicked(_ sender: Any) {
        UIView.animate(withDuration: 0.4) {
            self.textbookTabLine.backgroundColor = .clear
            self.courseTabLine.backgroundColor = .red
            self.favoritesTabLine.backgroundColor = .clear
        }
    }
    
    @IBAction func favoritesTabisClicked(_ sender: Any) {
        UIView.animate(withDuration: 0.4) {
            self.textbookTabLine.backgroundColor = .clear
            self.courseTabLine.backgroundColor = .clear
            self.favoritesTabLine.backgroundColor = .red
        }
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
        if let viewToAdd = bundle.loadNibNamed("TextbookTabTableView", owner: self, options: nil), let contentView = viewToAdd.first as? UIView {
            addSubview(contentView)
            contentView.frame = self.bounds
            contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
    }

}
