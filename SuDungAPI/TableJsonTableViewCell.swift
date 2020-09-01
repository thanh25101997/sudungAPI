//
//  TableJsonTableViewCell.swift
//  SuDungAPI
//
//  Created by Van Thanh on 9/1/20.
//  Copyright © 2020 Van Thanh. All rights reserved.
//

import UIKit

class TableJsonTableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var location: UILabel!
    
    @IBOutlet weak var age: UILabel!
    
    @IBOutlet weak var gender: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func LoadImg(url: String )  {
        let u = URL(string: url)
        do{
        let data = try Data(contentsOf: u!)
            img.image = UIImage(data: data)
            
        }catch{}
    }
    
}
