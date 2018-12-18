//
//  ViewController.swift
//  caoqinyu_13_3
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 caoqinyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var notice: UILabel!
    @IBOutlet weak var tempe: UILabel!
    @IBOutlet weak var wuran: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var city: UILabel!
    var cityInfo : [String : Any]?
    override func viewDidLoad() {
        super.viewDidLoad()
        print(cityInfo)
        // Do any additional setup after loading the view, typically from a nib.
        let info1 = cityInfo!["cityInfo"] as! [String : String]
        city.text = info1["city"]
        date.text = (cityInfo!["date"] as! String)
        
        let info3 = cityInfo!["data"] as! [String : Any]
        tempe.text = info3["wendu"] as! String
        wuran.text = info3["quality"] as!String
       notice.text = info1["cityId"]


}

}
