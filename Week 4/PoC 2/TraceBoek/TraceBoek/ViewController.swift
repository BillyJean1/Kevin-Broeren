//
//  ViewController.swift
//  TraceBoek
//
//  Created by Kevin Broeren on 04/12/2017.
//  Copyright © 2017 Kevin Broeren. All rights reserved.
//

import UIKit
import FacebookLogin
import FacebookCore
import FBSDKShareKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        let loginButton = LoginButton(readPermissions: [ .publicProfile, .userLikes ])
        loginButton.center = view.center
        
        view.addSubview(loginButton)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if AccessToken.current != nil {
            print("User is logged in")
            if let request = FBSDKGraphRequest(graphPath: "/me/likes", parameters: ["fields": "id, name, category", "limit": "100"]) {
                request.start(completionHandler: { (connection, result, error) -> Void in
                    if error == nil {
                        print(result)
                    }
                    else {
                        print(error)
                    }
                })
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

