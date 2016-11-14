//
//  ViewController.swift
//  videoAccess
//
//  Created by Sunny on 2016/11/11.
//  Copyright © 2016年 Sunny. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var Webview: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        var YoutubeVideoLink: String = "http://www.youtube.com/embed/P1LCpTNtHT"
        let width = 300
        let height = 200
        let frame = 30
        let Code: NSString = "<iframe width=\(width) height=\(height) src=\(YoutubeVideoLink) frame=\(frame) allowfullscreen><iframe>" as NSString;
        self.Webview.loadHTMLString(Code as String, baseURL: nil)
         */
        loadYoutube(videoID: "P1LCpTNtHTY")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadYoutube(videoID videoID:String) {
        // create a custom youtubeURL with the video ID
        guard
            let youtubeURL = NSURL(string: "https://www.youtube.com/embed/\(videoID)")
            else { return }
        // load your web request
        Webview.loadRequest( NSURLRequest(url: youtubeURL as URL) as URLRequest )
    }
    
}

