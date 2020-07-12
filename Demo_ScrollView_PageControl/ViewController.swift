//
//  ViewController.swift
//  DemoScrollView
//
//  Created by JillOU on 2020/7/11.
//  Copyright © 2020 Jillou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    //滑動pageControl scrollView跟著動
    @IBAction func slide_pageControl(_ sender: UIPageControl) {
        let currentPage = sender.currentPage
        let scrollView_offset = CGFloat( currentPage*240  + 20)
        scrollView.contentOffset = CGPoint(x: scrollView_offset, y:0 )
    }
    
    
    //滑動scrollView pageControl跟著動
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView){
        let currentPage = scrollView.contentOffset.x / 240
        pageControl.currentPage = Int(currentPage)
    }

}

