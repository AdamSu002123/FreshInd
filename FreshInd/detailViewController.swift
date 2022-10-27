//
//  detailViewController.swift
//  FreshInd
//
//  Created by gih96984 on 2022/9/29.
//

import UIKit

class detailViewController: UIViewController {
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailTextView: UITextView!
    
    //取得上一頁資料
    var fresh: FreshInfo!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailImageView.image = UIImage(named: fresh.image)
        detailTextView.text = fresh.description
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
