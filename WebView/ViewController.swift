//
//  ViewController.swift
//  WebView
//
//  Created by Rebeca Souza on 2017-05-12.
//  Copyright © 2017 Rebeca Souza. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Defines the dimentions manually
        //webView = WKWebView(frame: CGRect(x: 0, y: 20, width: 300, height: 300))
        //Constructor without frame
        webView = WKWebView()
        view.addSubview(webView)
        //Loads html content directly into the webView
        //webView.loadHTMLString("<h1>Html Header</h1>", baseURL: <#T##URL?#>)
        //Loads an html file
        //let url: URL = Bundle.main.url(forResource: "page", withExtension: "html")!
        //Loads a page from url
        let url: URL = URL(string: "https://www.google.com")!
        let request: URLRequest = URLRequest(url: url)
        webView.load(request)
        
        //AutoLayout override frame 
        webView.translatesAutoresizingMaskIntoConstraints = false
        let width = NSLayoutConstraint(item: webView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1.0, constant: 0 )
        let height = NSLayoutConstraint(item: webView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1.0, constant: -20)
        let top = NSLayoutConstraint(item: webView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 20)
        
        view.addConstraints([width, height, top])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

