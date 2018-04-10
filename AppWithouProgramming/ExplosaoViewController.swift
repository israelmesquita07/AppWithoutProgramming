//
//  ExplosaoViewController.swift
//  AppWithouProgramming
//
//  Created by Israel3D on 10/04/2018.
//  Copyright © 2018 Israel3D. All rights reserved.
//

import UIKit

class ExplosaoViewController: UIViewController {
    
    @IBOutlet weak var planeta: UIImageView!
    @IBOutlet weak var explosao: UIImageView!
    @IBOutlet weak var btnNao: UIButton!
    @IBOutlet weak var btnSim: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func explodir(_ sender: Any) {
        UIView.animate(withDuration: 0.2) {
            self.planeta.alpha = 0
        }
        explosao.animationImages = [
            UIImage(named: "explosao_15")!,
            UIImage(named: "explosao_14")!,
            UIImage(named: "explosao_13")!,
            UIImage(named: "explosao_12")!,
            UIImage(named: "explosao_11")!,
            UIImage(named: "explosao_10")!,
            UIImage(named: "explosao_9")!,
            UIImage(named: "explosao_8")!,
            UIImage(named: "explosao_7")!,
            UIImage(named: "explosao_6")!,
            UIImage(named: "explosao_5")!,
            UIImage(named: "explosao_4")!,
            UIImage(named: "explosao_3")!,
            UIImage(named: "explosao_2")!,
            UIImage(named: "explosao_1")!,
            UIImage(named: "explosao_0")!
        ]
        
        explosao.animationRepeatCount = 1
        explosao.startAnimating()
        btnSim.isHidden = true
        btnNao.titleLabel?.text = "◀︎"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
