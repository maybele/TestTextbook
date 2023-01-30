//
//  TwoViewController.swift
//  TestTextbook
//
//  Created by FDCBele on 1/28/23.
//

import UIKit

class TwoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tabSelec: TextbookTabTableView!
    @IBOutlet weak var tbTableView: UITableView!
    
    var datasource : [Textbook] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tbTableView.delegate = self
        self.tbTableView.dataSource = self
        
        self.datasource = MainDataSource.courseDataSource
        
        self.title = "Textbook List"
        
        print("test")
        
        let dequeueCell1 = UINib(nibName: "TextbookListViewCell", bundle: Bundle.main)
        let dequeueCell2 = UINib(nibName: "TextbookSearchTableViewCell", bundle: Bundle.main)
        
        tbTableView.register(dequeueCell1, forCellReuseIdentifier: "TextbookListViewCell")
        tbTableView.register(dequeueCell2, forCellReuseIdentifier: "TextbookSearchTableViewCell")
        
        //self.tbTableView.register(UITableViewCell.self, forCellReuseIdentifier: "TextbookListViewCell")

//      //  tbTableView.register(UITableViewCell.self,
//                               forCellReuseIdentifier: "TextbookListViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if datasource == courseDataSource {
//            return datasource.count
//        }
        return datasource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let textbook = datasource[indexPath.row]
        
        //print("This is textbook"(textbook))
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextbookSearchTableViewCell", for: indexPath) as! TextbookSearchTableViewCell
            return cell
        } else {
               let cell = tableView.dequeueReusableCell(withIdentifier: "TextbookListViewCell", for: indexPath) as! TextbookListViewCell
               cell.titleLabel.text = textbook.title
               cell.descriptionLabel.text = textbook.description
        return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
         let textbook = datasource[indexPath.row]
   //      let cat = textbook.subCat[indexPath.row]

         let storyboard = UIStoryboard(name: "Main", bundle: nil)
         let vc = storyboard.instantiateViewController(withIdentifier: "TextbookDetailViewController") as! TextbookDetailViewController

         vc.textbook = textbook
         self.navigationController?.pushViewController(vc, animated: true)
     }
}
