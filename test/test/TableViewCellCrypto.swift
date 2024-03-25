//
//  TableViewCellCrypto.swift
//  test
//
//  Created by vandeperre on 31/03/2023.
//

import UIKit

class TableViewCellCrypto: UITableViewCell {

    @IBOutlet weak var imgCryptoCell: UIImageView!
    @IBOutlet weak var nameCryptoCell: UILabel!
    @IBOutlet weak var lblCurrencyCrypto: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
