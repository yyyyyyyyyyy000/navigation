//
//  scrollView.swift
//  navigation
//
//  Created by 无敌帅的yyyyy on 2019/1/17.
//  Copyright © 2019年 无敌帅的yyyy. All rights reserved.
//

import UIKit

class scrollView: UIViewController,UIScrollViewDelegate {
    let swidth = UIScreen.main.bounds.size.width
    let height = UIScreen.main.bounds.size.height
    
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var Pagec: UIPageControl!
    
    var ima1:UIImageView!
    var ima2:UIImageView!
    var ima3:UIImageView!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ScrollView.delegate = self
        ScrollView.contentSize = CGSize(width: swidth*3, height: height)
        ScrollView.frame = view.frame
        let rect1 = CGRect(x: 0, y: 0, width: swidth, height: height)
        let rect2 = CGRect(x: swidth, y: 0, width: swidth, height: height)
        let rect3 = CGRect(x: 2*swidth, y: 0, width: swidth, height: height)
        
        ima1 = UIImageView(frame: rect1)
        ima2 = UIImageView(frame: rect2)
        ima3 = UIImageView(frame: rect3)
        
        ima1.image = UIImage(named: "1")
        ima2.image = UIImage(named: "3")
        ima3.image = UIImage(named: "7")
        
        ScrollView.addSubview(ima1)
        ScrollView.addSubview(ima2)
        ScrollView.addSubview(ima3)
        
        // Do any additional setup after loading the view.
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offset = scrollView.contentOffset
        Pagec.currentPage = Int(offset.x/swidth)
    }
    
    
    @IBAction func changePage(_ sender: UIPageControl) {
        UIView.animate(withDuration: 0.1, animations: {
            let wichpage = self.Pagec.currentPage
            self.ScrollView.contentOffset.x = CGFloat(wichpage)*self.swidth
        })
    }
    

}
