//
//  ViewController.swift
//  PopUpView
//
//  Created by Ammar Abdul-Hafez on 9/29/18.
//  Copyright © 2018 Ammar Abdul-Hafez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var customView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let customViewFrame = CGRect(x: 50, y: 150, width: view.frame.width - 100, height: view.frame.height - 400)
        customView = UIView(frame: customViewFrame)
        customView.backgroundColor = UIColor.blue
        view.addSubview(customView)
        
        customView.isHidden = true
    }
    
    private func loadCustomViewIntoController() {
        
        customView.isHidden = false
        
        // any other objects should be tied to this view as superView
        // for example adding this okayButton
        
        let closeButtonFrame = CGRect(x: 40, y: 100, width: 50, height: 50)
        let closeButton = UIButton(frame: closeButtonFrame )
        closeButton.setTitle("Close", for: .normal)
        // here we are adding the button its superView
        customView.addSubview(closeButton)
        
        closeButton.addTarget(self, action: #selector(btnClicked), for: UIControlEvents.touchUpInside)
        
        
    }
    @objc func btnClicked(sender: UIButton) {
        customView.isHidden = true
    }
    
    func didPressButtonFromCustomView(sender:UIButton) {
        // do whatever you want
        // make view disappears again, or remove from its superview
    }
    
    
    @IBAction func btn_showPopUp(_ sender: Any) {
      loadCustomViewIntoController()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

