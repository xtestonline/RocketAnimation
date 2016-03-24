//
//  ViewController.swift
//  RocketAnimation
//
//  Created by Suraj MAC2 on 2/26/16.
//  Copyright © 2016 supaint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //Generals
    
    //Controlls
    @IBOutlet weak var imgRocket: UIImageView!
    
    @IBOutlet weak var baseLine: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUserName: UITextField!
    //Let's Play
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.lblTitle.alpha = 0
        self.txtPassword.alpha = 0
        self.txtUserName.alpha = 0
    }

    @IBAction func btnAnimateClick(sender: AnyObject) {
        
        
        UIView.animateWithDuration(1.3, delay: 0.3, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            
            self.imgRocket.center.y = self.txtPassword.center.y+80
            self.imgRocket.transform = CGAffineTransformMakeScale(1, 1)
            
            }, completion: {
                (value: Bool) in
                
                UIView.animateWithDuration(1.5, animations: { () -> Void in
                    
                    self.imgRocket.center.y = self.lblTitle.center.y
                    self.imgRocket.transform = CGAffineTransformMakeScale(0.5, 0.5)
                    
                    }, completion: { (value:Bool) -> Void in
                        
                        UIView.animateWithDuration(1.1,  animations: { () -> Void in
                           // Need to remove
                            self.imgRocket.center.y = self.lblTitle.center.y-50
                            
                            self.imgRocket.transform = CGAffineTransformMakeScale(0.2, 0.2)
                            
//                            self.imgRocket.alpha = 0
//                            self.lblTitle.alpha = 1
//                            self.txtPassword.alpha = 1
//                            self.txtUserName.alpha = 1
                            }, completion: { (Value:Bool) -> Void in
                                //
                                
                                UIView.animateWithDuration(0.1,  animations: { () -> Void in
                                    //
                                    self.imgRocket.image = UIImage(named: "shop.png")
                                    self.imgRocket.transform = CGAffineTransformMakeScale(0.2, 0.2)
                                    
                                    }, completion: { (Value:Bool) -> Void in
                                        //
                                        UIView.animateWithDuration(0.9, animations: { () -> Void in
                                            //
                                             self.imgRocket.center.y = self.lblTitle.center.y+50
                                            self.imgRocket.transform = CGAffineTransformMakeScale(0.5, 0.5)
                                            
                                            }, completion: { (Value:Bool) -> Void in
                                                
                                                UIView.animateWithDuration(0.9, animations: { () -> Void in
                                                    //
                                                    self.imgRocket.center.y = self.txtPassword.center.y
                                                    self.imgRocket.transform = CGAffineTransformMakeScale(0.6, 0.6)
                                                    
                                                    }, completion: { (Value:Bool) -> Void in
                                                        
                                                        UIView.animateWithDuration(0.9,  animations: { () -> Void in
                                                            //
                                                            self.imgRocket.center.y = self.txtPassword.center.y+120
                                                            self.imgRocket.transform = CGAffineTransformMakeScale(0.8, 0.8)
                                                            self.lblTitle.alpha = 1
                                                            self.txtPassword.alpha = 1
                                                            self.txtUserName.alpha = 1
                                                            
                                                            
                                                            }, completion: { (Value:Bool) -> Void in
                                                                //
                                                                UIView.animateWithDuration(0.9,  animations: { () -> Void in
                                                                    //
                                                                     self.imgRocket.center.y = self.baseLine.center.y
                                                                    self.imgRocket.transform = CGAffineTransformMakeScale(1 ,1)
                                                                    }, completion: { (Value:Bool) -> Void in
                                                                        //
                                                                        self.imgRocket.alpha = 0
                                                                })
                                                        })
                                                })
                                                
                                        })
                                       
                                        
                                })
                                
                        })
                        
                        
                })
                
        })
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

