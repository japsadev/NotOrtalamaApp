//
//  NotHucreTableViewCell.swift
//  NotOrtalamaApp
//
//  Created by Salih Yusuf Göktaş on 21.05.2023.
//

import UIKit

class NotHucreTableViewCell: UITableViewCell {
	
	@IBOutlet weak var labelDersAdi: UILabel!
	@IBOutlet weak var labelNot2: UILabel!
	@IBOutlet weak var labelNot1: UILabel!
	
	override func awakeFromNib() {
        super.awakeFromNib()
		
		labelOzellik()
        
		func labelOzellik() {
			labelDersAdi.layer.cornerRadius = 5.0
			labelDersAdi.layer.masksToBounds = true
		}
		
		
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
