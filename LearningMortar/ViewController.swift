//
//  ViewController.swift
//  LearningMortar
//
//  Created by Matías Elorriaga on 9/11/16.
//  Copyright © 2016 melorriaga. All rights reserved.
//

import UIKit
import Mortar

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Learning Mortar"
        
        view.backgroundColor = .yellow
        
        let box = UIView()
        box.backgroundColor = .cyan
        
        let header = UIImageView()
        header.image = UIImage(named: "fractal")
        
        let logo = UIImageView()
        logo.image = UIImage(named: "CABJ")
        logo.contentMode = .scaleAspectFit
        
        let button = UIButton()
        button.setTitle("Go To TableView", for: .normal)
        button.backgroundColor = .red
        
        view.addSubview(box)
        view.addSubview(header)
        view.addSubview(logo)
        view.addSubview(button)
        
        box.m_top |=| m_topLayoutGuideBottom + 10
        box.m_right |=| view.m_right - 10
        box.m_bottom |=| view.m_bottom - 10
        box.m_left |=| view.m_left + 10
        
        header.m_height |=| box.m_height / 4
        header.m_top |=| box.m_top
        header.m_right |=| box.m_right
        header.m_left |=| box.m_left
        
        logo.m_height |=| header.m_height
        logo.m_center |=| header.m_center

        button.m_height |=| 50
        button.m_right |=| box.m_right
        button.m_bottom |=| box.m_bottom
        button.m_left |=| box.m_left
        
        button.addTarget(self, action: #selector(onButtonClick(button:)), for: .touchUpInside)
    }
    
    func onButtonClick(button: UIButton) {
        navigationController?.pushViewController(TableViewController(), animated: true)
    }

}
