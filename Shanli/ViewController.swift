//
//  ViewController.swift
//  Shanli
//
//  Created by Li Zhaotian on 3/22/18.
//  Copyright © 2018 Li Zhaotian. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var imageBkgd: UIImageView!
    var index = 0;
    var myUtterance = AVSpeechUtterance(string:"")
    let script = [
    "Honey, you are going to be 6 this year! You are a grown up girl! It's time to go to elementary school",
    "Why so early? Our baby is so young. She might get hurt at school!",
    "Let her stay at home for one year more, enjoy her childhood!",
    "All kids go to school at 6. and I don't see why it would be different for our girl."
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func `continue`(_ sender: Any) {
        
        if index == 11 {
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let con = sb.instantiateViewController(withIdentifier: "GoToSchoolAt6VC")
            self.present(con, animated: false, completion: nil)
            
            
        } else {
            
            imageBkgd.image = UIImage(named:"go-to-school-at-6-\(String(index))")
            index += 1
            
        }
    }
    
}

