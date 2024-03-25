//
//  TableViewCellIndice.swift
//  test
//
//  Created by vandeperre on 31/03/2023.
//

import UIKit

class TableViewCellIndice: UITableViewCell {

    @IBOutlet weak var imgIndiceCell: UIImageView!
    @IBOutlet weak var nameIndiceCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
