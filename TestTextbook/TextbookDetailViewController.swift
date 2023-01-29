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
    var chapter: Chapter?
    
    //var datasource = ["Chapter 1", "Chapter 2", "Chapter 3", "Chapter 4", "Chapter 5", "Chapter 6", "Chapter 7", "Chapter 8", "Chapter 9", "Chapter 10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Chapter"
        
        self.chapterTableView.delegate = self
        self.chapterTableView.dataSource = self
        
        print("test")
        
        let xibDueDateSwitchTableViewCell = UINib(nibName: "ChapterListTableViewCell", bundle: Bundle.main)
        chapterTableView.register(xibDueDateSwitchTableViewCell, forCellReuseIdentifier: "ChapterListTableViewCell")
       
//        if let title = textbook?.title{
//            displayDumpLabel.text = title
//        }else{
//            displayDumpLabel.text = ""
//        }
//
//        if let desc = textbook?.description{
//            secondLabel.text = desc
//        }else{
//            secondLabel.text = ""
//        }
        
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
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let textbook = datasource[indexPath.row]
       // let subcate = textbook.subcat[indexPath.row]
        
//        print("asfasf")
//        if indexPath.row == 0 {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "TextbookHeaderView", for: indexPath) as! TextbookHeaderView
//            return cell
//        } else {
               let cell = tableView.dequeueReusableCell(withIdentifier: "ChapterListTableViewCell", for: indexPath) as! ChapterListTableViewCell
        cell.chapterTextLabel.text = textbook.title
       
        return cell
  //  }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
         print("clicked")
         let textbook = datasource[indexPath.row]

//         let storyboard = UIStoryboard(name: "Main", bundle: nil)
//         let vc = storyboard.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController

        let webViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
           
        
        // vc.textbook = textbook
         self.navigationController?.pushViewController(webViewController, animated: true)
     }
}
