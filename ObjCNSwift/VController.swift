//
//  ViewController.swift
//  ObjCNSwift
//
//  Created by Vikram Sinha on 19/02/19.
//  Copyright © 2019 Vikram Sinha. All rights reserved.
//

import Foundation
import UIKit

@objcMembers class VController : UIViewController{
    override func viewDidLoad() {
        let vc = ViewController()
        print("objectivec function returned: " + vc.functionInSwift(withStr: "Sinha"))
    }
    
    func functionInSwift(str:String) -> String {
        let strRet = "Vikram " + str
        return strRet
    }
}
