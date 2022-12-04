//
//  ViewController.swift
//  WebSurfer
//
//  Created by мас on 04.12.2022.
//

import UIKit
import WebKit

class ViewController: UIViewController, UISearchBarDelegate, WKNavigationDelegate, WKUIDelegate {

    @IBOutlet var mySearchBar: UISearchBar!
    @IBOutlet var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let myURL = URL(string:"https://www.google.com")
        let myRequest = URLRequest(url: myURL!)
        
        myWebView.navigationDelegate = self
        myWebView.uiDelegate = self
        
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
        
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        mySearchBar.resignFirstResponder()
        
        if let url = URL(string: mySearchBar.text!) {
            
            myWebView.load(URLRequest(url: url))
            mySearchBar.text = nil
        } else {
            print("error")
        }
    }
    
}

