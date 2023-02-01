//
//  SubcategoryViewController.swift
//  TestTextbook
//
//  Created by FDCBele on 2/1/23.
//

import UIKit

class SubcategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var subcategoryTableView: UITableView!
    
       let data = ["Item 1", "Item 2", "Item 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "test"
        
        self.subcategoryTableView.delegate = self
        self.subcategoryTableView.dataSource = self
        
        let xibDueDateSwitchTableViewCell = UINib(nibName: "SubcategoryTableViewCell", bundle: Bundle.main)
        subcategoryTableView.register(xibDueDateSwitchTableViewCell, forCellReuseIdentifier: "ChapterListTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubcategoryTableViewCell", for: indexPath) as! SubcategoryTableViewCell
        cell.subcategoryLabel.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
}
