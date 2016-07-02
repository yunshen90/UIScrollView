//
//  ViewController.swift
//  UIScrollViewWalkingDead
//
//  Created by Yun Shen on 16/7/1.
//  Copyright © 2016年 Yun Shen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView! //var
    
    let WIDTH: CGFloat = 416
    let HEIGHT : CGFloat = 426

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for var x = 1; x <= 5; x += 1 {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)//scrollView-subview
            
            imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 280, WIDTH, HEIGHT)//之前喂怪兽也有用到 (0，270)(240,270)(480,270)
        }
        
        scrollView.contentSize = CGSizeMake(WIDTH * 5, scrollView.frame.size.height)//总宽，scrollview本来高度270
    }
    
    
}

