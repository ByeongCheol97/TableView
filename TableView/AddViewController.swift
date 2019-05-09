//
//  AddViewController.swift
//  TableView
//
//  Created by D7703_13 on 2019. 5. 9..
//  Copyright © 2019년 Personal Team. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    var testData : String?
    var imgData : String?
    var nameData : String?
    
    @IBOutlet weak var imageData: UIImageView!
    @IBOutlet weak var detailData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //print(testData!)
        self.title = testData
        
        imageData.image = UIImage(named: imgData!)
        detailData.text = nameData
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
