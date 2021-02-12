//
//  CustomCell.swift
//  TableViewTest
//
//  Created by craterzone on 08/02/21.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var celltitle: UILabel!
    @IBOutlet weak var cellSubtitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
