//
//  ViewController.swift
//  SocialSwift
//
//  Created by Andrew Bancroft on 11/23/15.
//  Copyright © 2015 Andrew Bancroft. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func postToFacebookTapped(sender: UIButton) {
        post(toService: SLServiceTypeFacebook)
    }

    @IBAction func postToTwitterTapped(sender: UIButton) {
        post(toService: SLServiceTypeTwitter)
    }
    
    func post(toService service: String) {
        if(SLComposeViewController.isAvailableForServiceType(service)) {
            let socialController = SLComposeViewController(forServiceType: service)
            //            socialController.setInitialText("Hello World!")
            //            socialController.addImage(someUIImageInstance)
            //            socialController.addURL(someNSURLInstance)
            self.presentViewController(socialController, animated: true, completion: nil)
        }
    }
}

