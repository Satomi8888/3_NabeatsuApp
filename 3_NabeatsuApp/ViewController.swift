//
//  ViewController.swift
//  3_NabeatsuApp
//
//  Created by 遠山　聡美 on 2018/03/04.
//  Copyright © 2018年 Simple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nabeatsuImage.image = #imageLiteral(resourceName: "nomal")
    }
    
    var countnumber = 0

    @IBOutlet weak var tapCountLabel: UILabel!
    @IBOutlet weak var nabeatsuImage: UIImageView!
    
    //リセットボタンのアクション
    @IBAction func tapResetButton(_ sender: Any) {
        countnumber = 0
        tapCountLabel.text = "count　\(countnumber)"
        nabeatsuImage.image = #imageLiteral(resourceName: "nomal")
    }
    
    //カウントアップボタンのアクション
    @IBAction func tapCountButton(_ sender: Any) {
        var judge3:Bool = false
        var judge5:Bool = false
        countnumber += 1
        tapCountLabel.text = "count　\(countnumber)"
        
        //数字を判定
        if countnumber % 3 == 0 || String(countnumber).contains("3") {
            judge3 = true
        }
        if countnumber % 5 == 0 || String(countnumber).contains("5") {
            judge5 = true
        }
        
        //数字の判定を元に画像を表示
        if judge3 && judge5 {
            nabeatsuImage.image = #imageLiteral(resourceName: "wallaby")
        } else if judge5 {
            nabeatsuImage.image = #imageLiteral(resourceName: "image5")
        } else if judge3 {
            nabeatsuImage.image = #imageLiteral(resourceName: "image3")
        } else {
            nabeatsuImage.image = #imageLiteral(resourceName: "nomal")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

