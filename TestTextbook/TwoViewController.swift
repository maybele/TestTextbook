//
//  TwoViewController.swift
//  TestTextbook
//
//  Created by FDCBele on 1/28/23.
//

import UIKit

class TwoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, TabClickListener {
    
    var tabType: Int = 1
    
    func onTabClick(type: Int) {
        if(type == 1) {
            // course
            datasource = MainDataSource.seriesDataSource
        } else if(type == 2) {
            // favorites
            datasource = MainDataSource.courseDataSource
        } else {
            // series
            datasource = MainDataSource.getFavorites()
        }
        
        tabType = type
        
        if datasource.count == 0 {
            if type == 1 {
                self.noTextbookView.noTextbookLabel.text = "No series to display"
            } else if type == 2 {
                self.noTextbookView.noTextbookLabel.text = "No course to display"
            } else {
                self.noTextbookView.noTextbookLabel.text = "You have not added your favorite textbooks yet. Tap the mark ♡ on the chapter selection to add."
            }
            self.noTextbookView.isHidden = false
            self.tbTableView.isHidden = true
        } else {
            self.noTextbookView.isHidden = true
            self.tbTableView.isHidden = false
        }
        self.tbTableView.reloadData()
    }
    
    @IBOutlet weak var tabSelec: TextbookTabTableView!
    @IBOutlet weak var tbTableView: UITableView!
    @IBOutlet weak var noTextbookView: NoTextbookView!
    
    var datasource : [Textbook] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tbTableView.delegate = self
        self.tbTableView.dataSource = self
        
        self.datasource = MainDataSource.seriesDataSource
        
        noTextbookToDisplay()
        
        self.title = "Textbook List"
        
        let dequeueCell1 = UINib(nibName: "TextbookListViewCell", bundle: Bundle.main)
        let dequeueCell2 = UINib(nibName: "TextbookSearchTableViewCell", bundle: Bundle.main)
        
        tbTableView.register(dequeueCell1, forCellReuseIdentifier: "TextbookListViewCell")
        tbTableView.register(dequeueCell2, forCellReuseIdentifier: "TextbookSearchTableViewCell")
        
        self.tabSelec.setListener(listener: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count+1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextbookSearchTableViewCell", for: indexPath) as! TextbookSearchTableViewCell
            return cell
        } else {
                let textbook = datasource[indexPath.row-1]
            
               let cell = tableView.dequeueReusableCell(withIdentifier: "TextbookListViewCell", for: indexPath) as! TextbookListViewCell
               cell.titleLabel.text = textbook.title
               cell.descriptionLabel.text = textbook.description
        return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        if indexPath.row == 0 {
            return
        }
        
         let textbook = datasource[indexPath.row-1]
    
         let storyboard = UIStoryboard(name: "Main", bundle: nil)
         let vc = storyboard.instantiateViewController(withIdentifier: "TextbookDetailViewController") as! TextbookDetailViewController

         vc.textbook = textbook
        vc.tabType = tabType
         self.navigationController?.pushViewController(vc, animated: true)
     }
    
    func noTextbookToDisplay() {
        if datasource.count == 0 {
            self.noTextbookView.isHidden = false
            self.tbTableView.isHidden = true
        } else {
            self.noTextbookView.isHidden = true
            self.tbTableView.isHidden = false
        }
    }
}
