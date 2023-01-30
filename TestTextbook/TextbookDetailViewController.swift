//
//  TextbookDetailViewController.swift
//  TestTextbook
//
//  Created by FDCBele on 1/28/23.
//

import UIKit
import WebKit

class TextbookDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var headerView: TextbookHeaderView!
    @IBOutlet weak var chapterTableView: UITableView!
    
    var textbook: Textbook?

    var chapterDataSource : [Chapter] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Chapter"
        
        self.chapterTableView.delegate = self
        self.chapterTableView.dataSource = self
        
        print("test")
        
        let xibDueDateSwitchTableViewCell = UINib(nibName: "ChapterListTableViewCell", bundle: Bundle.main)
        chapterTableView.register(xibDueDateSwitchTableViewCell, forCellReuseIdentifier: "ChapterListTableViewCell")
       
        if let title = textbook?.title {
            self.headerView.titleLabel.text = title
        }else {
            self.headerView.titleLabel.text = ""
        }
        
        if let desc = textbook?.description {
            self.headerView.descLabel.text = desc
        }else {
            self.headerView.descLabel.text = ""
        }
        
        if textbook != nil && textbook?.subcat.count ?? 0 > 0 {
            setSubCategory(category: textbook!.subcat[0])
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chapterDataSource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let chapter = chapterDataSource[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChapterListTableViewCell", for: indexPath) as! ChapterListTableViewCell
        cell.chapterTextLabel.text = chapter.chapTitle
       
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let webViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewController") as! WebViewController

         self.navigationController?.pushViewController(webViewController, animated: true)
     }
    
    func setSubCategory(category : Subcategory) {
        self.chapterDataSource = category.chapters
        self.chapterTableView.reloadData()
    }
}
