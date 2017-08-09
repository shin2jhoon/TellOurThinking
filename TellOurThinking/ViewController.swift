//
//  ViewController.swift
//  TellOurThinking
//
//  Created by JungHoon on 2017. 8. 1..
//  Copyright © 2017년 JungHoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("This is for tellOurThinnking!")
  
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth:CGFloat = 0.0
        
        let scrollWidth = scrollView.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image:image)
            
            var newX : CGFloat = 0.0
            
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            imageView.frame = CGRect(x: newX - 75, y: ( scrollView.frame.size.height / 2 ) - 75 , width: 150, height: 150)
            
            images.append(imageView)
            scrollView.addSubview(imageView)
            
            
        }
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        scrollView.clipsToBounds = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }


}

