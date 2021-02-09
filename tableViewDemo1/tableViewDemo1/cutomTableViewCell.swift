//
//  cutomTableViewCell.swift
//  tableViewDemo1
//
//  Created by craterzone on 08/02/21.
//

import UIKit

class cutomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    
    @IBOutlet weak var cellTitle: UILabel!
    
    @IBOutlet weak var cellSubtitle: UILabel!
    
    @IBOutlet weak var cellButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        cellImage.layer.cornerRadius = cellImage.frame.size.height / 2
        cellImage.clipsToBounds = true
    }
}
