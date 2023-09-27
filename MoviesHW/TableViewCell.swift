//
//  TableViewCell.swift
//  MoviesHW
//
//  Created by Alua Nurakhanova on 16.09.2023.
//

import UIKit
import SDWebImage

class TableViewCell: UITableViewCell {

    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var directorImage: UIImageView!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData(movie:Movies){
        nameLabel.text = movie.name
        yearLabel.text = movie.yearOfRelease
        directorLabel.text = movie.director
        
        directorImage.sd_setImage(with: URL(string : movie.directorImage),completed: nil)
        posterImage.sd_setImage(with: URL(string: movie.poster), completed: nil)
    }

}
