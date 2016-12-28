//
//  ViewController.swift
//  Scrollview
//
//  Created by lokeshreddy on 12/28/16.
//  Copyright © 2016 lokeshreddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }

    override func viewDidAppear(_ animated: Bool) {
        var contentWidth : CGFloat = 0.0
        
        var scrollwidth = scrollView.frame.width
        for x in 0...2 {
            
            
            
            
            let image = UIImage(named: "icon\(x).png")
            //to give image reference
            var imagereference = UIImageView(image: image)
            images.append(imagereference)
            
            
            var newX : CGFloat = 0.0
            
            newX = scrollwidth/2 + scrollwidth * CGFloat(x)
            
            contentWidth += newX
            
            print(contentWidth)
            scrollView.addSubview(imagereference)
            
            imagereference.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height/2)-75, width: 150, height: 150)
            
        }
        scrollView.contentSize = CGSize(width: contentWidth, height: scrollView.frame.size.height)
        scrollView.clipsToBounds = false
        print("count is\(images.count)")
    }


}

