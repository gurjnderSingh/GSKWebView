//
//  GSWebViewController.swift
//  GSWebView
//
//  Created by Gurjinder Singh on 16/08/22.
//

import UIKit
import GSKWebView

class ViewController: UIViewController {
    let webViewC = GSKWebViewController()


    override func viewDidLoad() {
        let url = URL.init(string: "https://www.yahoo.com")
        webViewC.url = url
        self.present(webViewC, animated: true, completion: nil)
    }

}

