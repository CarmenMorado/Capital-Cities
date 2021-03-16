//
//  DetailViewController.swift
//  Project16
//
//  Created by Carmen Morado on 3/15/21.
//

import UIKit
import WebKit

class DetailViewController: UIViewController,  WKNavigationDelegate {
    @IBOutlet var webView: WKWebView!
    var selectedWebsite: String?
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let websiteToLoad = selectedWebsite {
            let url = URL(string: "https://" + websiteToLoad)!
            webView.load(URLRequest(url: url))
            webView.allowsBackForwardNavigationGestures = true
        }
    }
}
