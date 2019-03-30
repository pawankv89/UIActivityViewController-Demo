//
//  ViewController.swift
//  UIActivityViewController Demo
//
//  Created by Pawan kumar on 30/03/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func shareImageButtonTap(_ sender: Any) {
        
        //Image Path
        let imagePath = Bundle.main.url(forResource: "image", withExtension: "png")!
        
        let activityVC = UIActivityViewController(activityItems: [imagePath], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = sender as? UIView
        self.present(activityVC, animated: true, completion: nil)
        
    }
    
    @IBAction func shareURLButtonTap(_ sender: Any) {
        
        //URL
        let websiteURL = "https://github.com/pawankv89"
        
        let activityVC = UIActivityViewController(activityItems: [websiteURL], applicationActivities: nil)
        
        //New Excluded Activities Code
        activityVC.excludedActivityTypes = [UIActivity.ActivityType.airDrop, UIActivity.ActivityType.saveToCameraRoll]
        
        activityVC.popoverPresentationController?.sourceView = sender as? UIView
        self.present(activityVC, animated: true, completion: nil)
        
    }
    
    @IBAction func shareTextButtonTap(_ sender: Any) {
        
        //Text
        let text = "Pawan Kumar"
        
        let activityVC = UIActivityViewController(activityItems: [text], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = sender as? UIView
        self.present(activityVC, animated: true, completion: nil)
    }
    
    @IBAction func shareAllButtonTap(_ sender: Any) {
        
        //Image Path
        let imagePath = Bundle.main.url(forResource: "image", withExtension: "png")!
        //URL
        let websiteURL = "https://github.com/pawankv89"
        //Text
        let text = "Pawan Kumar"

        let activityVC = UIActivityViewController(activityItems: [imagePath, websiteURL, text], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = sender as? UIView
        self.present(activityVC, animated: true, completion: nil)
    }

}

