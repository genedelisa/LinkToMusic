//
//  ViewController.swift
//  LinkToMusic
//
//  Created by Gene De Lisa on 1/19/17.
//  Copyright © 2017 Gene De Lisa. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    var svc:SFSafariViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func openAction(_ sender: UIButton) {
        
        if let url = URL(string: "https://geo.itunes.apple.com/us/album/symphony-no.-3-op.-88-iv./id324784169?i=324784331&at=1l3vps5&ct=cotd&mt=1&ls=1&app=music") {
            openURL(url)
        }
    }
    
    @IBAction func openSafariAction(_ sender: UIButton) {
        
//        if let url = URL(string: "https://geo.itunes.apple.com/us/album/symphony-no.-3-op.-88-iv./id324784169?i=324784331&at=1l3vps5&ct=cotd&mt=1&ls=1&app=music") {
//            openURLSafari(url)
//        }
//        
//        if let url = URL(string: "https://geo.itunes.apple.com/us/album/symphony-no.-3-op.-88-iv./id324784169?i=324784331&mt=1&app=music") {
//            openURLSafari(url)
//        }
        
        // from apple music toolbox
        if let url = URL(string: "https://geo.itunes.apple.com/us/album/symphony-no.-3-op.-88-v.-defiance/id324784169?i=324784354&mt=1&app=music&at=1l3vps5&ct=cotd") {
            openURLSafari(url)
        }
        
        
    }

    func openURL(_ url:URL) {
        print("\(#function)")
        
        DispatchQueue.main.async {
            if #available(iOS 10.0, *) {
                let options = [UIApplicationOpenURLOptionUniversalLinksOnly : false]
                UIApplication.shared.open(url, options: options) {
                    (success:Bool) in
                    print("opened \(success)")
                }
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    func openURLSafari(_ url:URL) {
        print("\(#function)")
        
        DispatchQueue.main.async {
            self.svc = SFSafariViewController(url: url, entersReaderIfAvailable: false)
            self.svc.delegate = self
            self.self.present(self.svc, animated: true, completion: nil)
        }
    }

}

//MARK: - SFSafariViewControllerDelegate
@available(iOS 9.0, *)
extension ViewController:  SFSafariViewControllerDelegate {
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        controller.dismiss(animated: true, completion: nil)
    }
}
