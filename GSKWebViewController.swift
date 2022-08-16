//
//  GSKWebViewController.swift
//  GSKWebView
//
//  Created by Gurjinder Singh on 16/08/22.
//

import UIKit
import WebKit

public class GSKWebViewController: UIViewController {
    
    private let webView = WKWebView(frame: .zero)

    open var url: URL?
    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .black
        let backBtn = UIButton()
        backBtn.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(backBtn)
        backBtn.setTitle("< Back", for: .normal)
        backBtn.setTitleColor(.white, for: .normal)
        backBtn.addTarget(self, action: #selector(tapBack), for: .touchUpInside)
        NSLayoutConstraint.activate([
            backBtn.leftAnchor.constraint(equalTo: self.view.leftAnchor,constant: 10),
            backBtn.topAnchor.constraint(equalTo: self.view.topAnchor,constant: 20),
        ])

        webView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.webView)
        NSLayoutConstraint.activate([
            self.webView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.webView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            self.webView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            self.webView.topAnchor.constraint(equalTo: self.view.topAnchor,constant: 70),
        ])
        self.view.setNeedsLayout()
        if self.url == nil {
            self.url = URL.init(string: "https://www.google.com")
        }
        if let url = self.url {
            let request = URLRequest(url: url)
            self.webView.load(request)
        }
    }
    
    @objc func tapBack() {
        self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }

}
