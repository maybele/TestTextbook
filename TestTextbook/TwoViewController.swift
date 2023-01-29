//
//  TwoViewController.swift
//  TestTextbook
//
//  Created by FDCBele on 1/28/23.
//

import UIKit

class TwoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tbTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tbTableView.delegate = self
        self.tbTableView.dataSource = self
        
        self.title = "Textbook List2"
        
        print("test")
        
        let xibDueDateSwitchTableViewCell = UINib(nibName: "TextbookListViewCell", bundle: Bundle.main)
        tbTableView.register(xibDueDateSwitchTableViewCell, forCellReuseIdentifier: "TextbookListViewCell")
        
        //self.tbTableView.register(UITableViewCell.self, forCellReuseIdentifier: "TextbookListViewCell")

//      //  tbTableView.register(UITableViewCell.self,
//                               forCellReuseIdentifier: "TextbookListViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let textbook = datasource[indexPath.row]
        
        print("asfasf")
//        if indexPath.row == 0 {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "TextbookTabTableViewCell", for: indexPath) as! TextbookTabTableViewCell
//            return cell
//        } else {
               let cell = tableView.dequeueReusableCell(withIdentifier: "TextbookListViewCell", for: indexPath) as! TextbookListViewCell
               cell.titleLabel.text = textbook.title
               cell.descriptionLabel.text = textbook.description
        return cell
  //  }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
         print("clicked")
         let textbook = datasource[indexPath.row]
   //      let cat = textbook.subCat[indexPath.row]

         let storyboard = UIStoryboard(name: "Main", bundle: nil)
         let vc = storyboard.instantiateViewController(withIdentifier: "TextbookDetailViewController") as! TextbookDetailViewController

         vc.textbook = textbook
         self.navigationController?.pushViewController(vc, animated: true)
     }
}
