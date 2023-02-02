//
//  WebViewController.swift
//  TestTextbook
//
//  Created by FDCBele on 1/29/23.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    var webView: WKWebView!

    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
      //  webView = WKWebView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height * 0.66).integral)
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
      //  webView.uiDelegate = self handle ko mga button diri
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let buttonItem = UIBarButtonItem(title: "...", style: .plain, target: self, action: #selector(self.buttonTouched))
                navigationItem.rightBarButtonItem = buttonItem

        let myURL = URL(string:"https://english.fdc-inc.com/sp/textbook/view?connect_id=813&class=travel_english_entry&chapter=1&main_html_directory=travel_english_entry&main_chapter=1&alt_html_directory=&alt_chapter=&textbook_category_type=0&user_id=55106&licenser=0&show_related_textbook=1&deviceType=2&appVersion=5.0.0")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    @objc private func buttonTouched() {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let addToFavorites = UIAlertAction(title: "Add to favorites", style: .default)
        let report = UIAlertAction(title: "Textbook error report", style: .default)
        let createMemo = UIAlertAction(title: "Create memo", style: .default)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addAction(addToFavorites)
        alert.addAction(report)
        alert.addAction(createMemo)
        alert.addAction(cancel)
        
        self.present(alert, animated: true)
    }
}
