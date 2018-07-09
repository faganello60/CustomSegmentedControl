//
//  ViewController.swift
//  CustomSegmentedControl
//
//  Created by Bruno Faganello Neto on 08/07/18.
//  Copyright © 2018 Faganello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var interfaceSegmented: CustomSegmentedControl!{
        didSet{
            interfaceSegmented.setButtonTitles(buttonTitles: ["OFF","HTTP","AUTO"])
            interfaceSegmented.selectorViewColor = .orange
            interfaceSegmented.selectorTextColor = .orange
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let codeSegmented = CustomSegmentedControl(frame: CGRect(x: 0, y: 50, width: self.view.frame.width, height: 50), buttonTitle: ["OFF","HTTP","AUTO"])
        codeSegmented.backgroundColor = .clear
        view.addSubview(codeSegmented)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

