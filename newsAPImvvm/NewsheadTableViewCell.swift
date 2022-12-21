//
//  NewsheadTableViewCell.swift
//  newsAPImvvm
//
//  Created by ddukk15 Akhil Surendran on 21/12/22.
//

import UIKit

class NewsheadTableViewCell: UITableViewCell {

    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var source: UILabel!
    @IBOutlet weak var newsSub: UILabel!
    @IBOutlet weak var newsHead: UILabel!
    @IBOutlet weak var contentImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
    }

}
