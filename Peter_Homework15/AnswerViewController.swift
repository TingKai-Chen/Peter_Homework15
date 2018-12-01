//
//  AnswerViewController.swift
//  Peter_Homework15
//
//  Created by 陳庭楷 on 2018/11/30.
//  Copyright © 2018年 陳庭楷. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    @IBOutlet weak var constellationImage: UIImageView!
    
    @IBOutlet weak var contentLabel: UILabel!
    
    var role : Role?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let role = self.role {
            
            self.constellationImage.image = UIImage(named: role.image)
            
            self.contentLabel.text = role.content
            
        }
   
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
