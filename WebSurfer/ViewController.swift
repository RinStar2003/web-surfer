//
//  ViewController.swift
//  WebSurfer
//
//  Created by мас on 04.12.2022.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var mySearchBar: UISearchBar!
    @IBOutlet var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        let myURL = URL(string:"https://www.apple.com")
        let myRequest = URLRequest(url: myURL!)
        myWebView.load(myRequest)
    }

    @IBAction func back(_ sender: UIBarButtonItem) {
        if myWebView.canGoBack {
            myWebView.goBack()
        }
    }
    
    @IBAction func refresh(_ sender: UIBarButtonItem) {
        myWebView.reload()
    }
    
    @IBAction func next(_ sender: UIBarButtonItem) {
        if myWebView.canGoForward {
            myWebView.goForward()
        }
    }
    
}

