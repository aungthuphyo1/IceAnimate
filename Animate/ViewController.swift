//
//  ViewController.swift
//  Animate
//
//  Created by AungThuPhyo on 3/6/19.
//  Copyright © 2019 aungthuphyo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var ice_cream: UILabel!
    @IBOutlet weak var poemText: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       ice_cream.alpha = 0
       poemText.alpha = 0
        
       textAnimate()
        
       animation5()
       animation3()
       animation2()
        
    }

    
    func animation2(){
        UIView.animate(withDuration: 2.0, animations: {
            self.image2.frame.origin.x -= 100
        }) { (complete: Bool)-> Void in
            UIView.animate(withDuration: 0.2, animations: {
                self.image2.frame.origin.x += 100
            }, completion: { (complet: Bool)-> Void in
                UIView.animate(withDuration: 0.2, animations: {
                    self.image2.animationRepeatCount = 2
                }, completion: nil
            )}
        )}
    }
    
    
    func animation3(){
        UIView.animate(withDuration:2.0, animations: {
                self.image3.frame.origin.x += 100
        }, completion: {(complete: Bool)-> Void in
            UIView.animate(withDuration: 2.0, animations: {
                self.image3.frame.origin.x -= 100
            }, completion: { (complete: Bool) in
                self.image3.animationRepeatCount = 2
            })
            
        })
    }
    
    
    func animation5(){
        UIView.animate(withDuration: 2.0, animations: {
            self.image4.frame.origin.y -= 300
        }, completion: nil)
    }

    
    func textAnimate(){
        
        UILabel.animate(withDuration: 1.0, animations: {
            self.ice_cream.alpha = 1.2
        }) { (complete: Bool)-> Void in
            UIView.animate(withDuration: 4, animations: {
                self.ice_cream.alpha = 2.0
            }, completion: { (complete: Bool)-> Void in
                UIView.animate(withDuration: 1.0, animations: {
                    self.poemText.alpha = 2.0
                })
            })
        }
        
        
        
    }

}

