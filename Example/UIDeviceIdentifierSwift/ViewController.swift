//
//  ViewController.swift
//  UIDeviceIdentifierSwift
//
//  Created by Antoine Cœur on 22/12/2015.
//
//

import UIKit
import UIDeviceIdentifier

class ViewController: UIViewController {

    @IBOutlet weak var PlatformLabel: UILabel!
    @IBOutlet weak var PlatformStringLabel: UILabel!
    @IBOutlet weak var PlatformStringSimpleLabel: UILabel!
    
    @IBAction func GetPlatform(sender: AnyObject) {
        PlatformLabel.text = UIDeviceHardware.platform();
    }
    @IBAction func GetPlatformString(sender: AnyObject) {
        PlatformStringLabel.text = UIDeviceHardware.platformString();
    }
    @IBAction func GetPlatformStringSimple(sender: AnyObject) {
        PlatformStringSimpleLabel.text = UIDeviceHardware.platformStringSimple();
    }
}

