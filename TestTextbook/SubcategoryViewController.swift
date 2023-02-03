//
//  SubcategoryViewController.swift
//  TestTextbook
//
//  Created by FDCBele on 2/1/23.
//

import UIKit

class SubcategoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var datasource = ["Subcategory 1", "Subcategory 2", "Subcategory 3", "Subcategory 4", "Subcategory 5"]
    
    @IBOutlet weak var subcategoryTableView: UITableView!

    @IBAction func closeSubcategory(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.subcategoryTableView.delegate = self
        self.subcategoryTableView.dataSource = self

            let subcategoryCell = UINib(nibName: "SubcategoryTableViewCell", bundle: Bundle.main)
            subcategoryTableView.register(subcategoryCell, forCellReuseIdentifier: "SubcategoryTableViewCell")
        }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return datasource.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "SubcategoryTableViewCell", for: indexPath) as! SubcategoryTableViewCell
            
            cell.subcategoryLabel.text = datasource[indexPath.row]

            return cell
        }

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
            let webViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SubcategoryViewController") as! SubcategoryViewController

             self.navigationController?.pushViewController(webViewController, animated: true)
         }
}

extension UIButton {
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
}
