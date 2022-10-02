//
//  DomeTableViewCell.swift
//  testapp
//
//  Created by suriya taothongkom on 18/9/2565 BE.
//

import UIKit

class DomeTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var View_profile: UIView!
    
    @IBOutlet weak var date: UILabel!
    
    @IBOutlet weak var Hdedar: UILabel!
    
    @IBOutlet weak var test_area: UITextView!
    
    @IBOutlet weak var coupon: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
