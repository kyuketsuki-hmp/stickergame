//
//  ViewController.swift
//  StickerGame
//
//  Created by mic-student5 on 7/27/19.
//  Copyright © 2019 mic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var stickers = ["pic1.png","pic2.png","pic3.png"]
    
    var activeStickerIndex = -1
    
    var centerX:CGFloat = 0
    var centerY:CGFloat = 0
    var stkWDT:CGFloat = 0
    var stkHTD:CGFloat = 0
    
    
    @IBAction func deagSticker(_ sender: UIPanGestureRecognizer) {
        
        print(sender.location(in: view))
        let touchedLocation = sender.location(in: view)
        
         
        
        if sender.state == .began{
            
        }else if sender.state == .changed{
            
        }
    }
    
    
    @IBAction func addSticker(_ sender: UIButton) {
        
        let sticker = stickers[sender.tag]
        let imageView = UIImageView(image: UIImage(named: sticker))
        
        imageView.frame = CGRect(x: centerX, y: centerY,width: stkWDT, height:stkHTD)
        view.addSubview(imageView)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        centerX = view.frame.size.width / 2
        
        centerY = view.frame.size.height / 2    }


}

