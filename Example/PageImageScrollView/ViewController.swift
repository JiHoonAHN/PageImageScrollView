//
//  ViewController.swift
//  PageImageScrollView
//
//  Created by ahnjh1028@naver.com on 04/13/2022.
//  Copyright (c) 2022 ahnjh1028@naver.com. All rights reserved.
//

import UIKit
import PageImageScrollView

@available(iOS 13.0, *)
class ViewController: UIViewController {
    
    
    private let images = [
        UIImage(systemName: "xmark"),
        UIImage(systemName: "xmark"),
        UIImage(systemName: "xmark"),
        UIImage(systemName: "xmark")
    ]
    
    
    
    private lazy var pageScrollView : PageImageScrollView = {
        let pageScrollView = PageImageScrollView(
            frame: .zero,
            pageIndicatorTintColor: UIColor.darkGray,
            currentPageIndicatorTintColor: UIColor.systemBlue,
            images: images
        )
        pageScrollView.translatesAutoresizingMaskIntoConstraints = false
        return pageScrollView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(pageScrollView)
        
        NSLayoutConstraint.activate([
            pageScrollView.topAnchor.constraint(equalTo: view.topAnchor),
            pageScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pageScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            pageScrollView.heightAnchor.constraint(equalToConstant: 400)
        ])
        pageScrollView.frame = .zero
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
