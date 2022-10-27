//
//  FreshTableViewCell.swift
//  FreshInd
//
//  Created by gih96984 on 2022/9/27.
//

import UIKit

class FreshTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var freshImageView: UIImageView!
    @IBOutlet weak var freshName: UILabel!
    @IBOutlet weak var originLabel: UILabel!
    
    
    func update(data:Fresh,section:Int,row:Int){
        freshImageView.image = UIImage(named: data.freshType[section].freshInfo[row].image)
        freshName.text = data.freshType[section].freshInfo[row].name
        originLabel.text = data.freshType[section].freshInfo[row].origin
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
