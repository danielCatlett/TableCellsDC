//  NameAndColorCellTableViewCell.swift
//  TableCellsDC
//
//  Created by Daniel Catlett on 3/4/17.
//  Copyright © 2017 Daniel Catlett. All rights reserved.


import UIKit

class NameAndColorCellTableViewCell: UITableViewCell
{
    var name: String = ""
        {
        didSet
        {
            if(name != oldValue)
            {
                nameLabel.text = name
            }
        }
    }
    var color: String = ""
        {
        didSet
        {
            if(color != oldValue)
            {
                colorLabel.text = color
            }
        }
    }
    var nameLabel: UILabel!
    var colorLabel: UILabel!
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let nameLabelRect = CGRect(x: 0, y: 5, width: 70, height: 15)
        let nameMarker = UILabel(frame: nameLabelRect)
        nameMarker.textAlignment = NSTextAlignment.right
        nameMarker.text = "Name:"
        nameMarker.font = UIFont.boldSystemFont(ofSize: 12)
        contentView.addSubview(nameMarker)
        
        let colorLabelRect = CGRect(x: 0, y: 26, width: 70, height: 15)
        let colorMarker = UILabel(frame: colorLabelRect)
        colorMarker.textAlignment = NSTextAlignment.right
        colorMarker.text = "Color:"
        colorMarker.font = UIFont.boldSystemFont(ofSize: 12)
        contentView.addSubview(colorMarker)
        
        let nameValueRect = CGRect(x: 80, y: 5, width: 200, height: 15)
        nameLabel = UILabel(frame: nameValueRect)
        contentView.addSubview(nameLabel)
        
        let colorValueRect = CGRect(x: 80, y: 25, width: 200, height: 15)
        colorLabel = UILabel(frame: colorValueRect)
        contentView.addSubview(colorLabel)
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }

}
