//
//  ViewController.swift
//  CircularProgressViewDemo
//
//  Created by Hiren Kadam on 28/07/20.
//  Copyright © 2020 Hiren Kadam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circularProgressView: CircularProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         //MARK: If you want to make view programatically without storyboard
         
        let cp = CircularProgressView(frame: CGRect(x: 50.0, y: 50.0, width: 100.0, height: 100.0))
        cp.trackColor = UIColor.red
        cp.progressColor = UIColor.green
        self.view.addSubview(cp)
        */
        
        circularProgressView.progressColor = UIColor.green
        circularProgressView.trackColor = UIColor.red
        circularProgressView.targetValue = 100
        circularProgressView.achievedValue = 50
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //MARK: call the setUI method of Circular view i view did Appear because once the view appears we get the final frame of that circular view to calculate the arc center for circular layer
        circularProgressView.setUI()
        
    }
}

