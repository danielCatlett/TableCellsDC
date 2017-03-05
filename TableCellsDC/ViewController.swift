//  ViewController.swift
//  TableCellsDC
//
//  Created by Daniel Catlett on 3/4/17.
//  Copyright © 2017 Daniel Catlett. All rights reserved.


import UIKit

class ViewController: UIViewController, UITableViewDataSource
{
    let cellTableIdentifier = "CellTableIdentifier"
    @IBOutlet var tableView:UITableView!
    let computers = [
        ["Name": "Macbook Air", "Color": "Silver"],
        ["Name": "Macbook Pro", "Color": "Silver"],
        ["Name": "Imac", "Color": "Silver"],
        ["Name": "Mac Pro", "Color": "Black"]
    ]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView.register(NameAndColorCellTableViewCell.self, forCellReuseIdentifier: cellTableIdentifier)
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    //MARK:-
    //MARK: Table View Data Source Method
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return computers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellTableIdentifier, for: indexPath) as! NameAndColorCellTableViewCell
        
        let rowData = computers[indexPath.row]
        cell.name = rowData["Name"]!
        cell.color = rowData["Color"]!
        
        return cell
    }
}

