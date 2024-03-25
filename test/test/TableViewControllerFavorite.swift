//
//  TableViewControllerFavorite.swift
//  test
//
//  Created by vandeperre on 31/03/2023.
//

import UIKit

class TableViewControllerFavorite: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var array = ["1", "2"]
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        if text != nil {
            dataReceived.text = text
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellFavorite
        cell.lbl.text = array[indexPath.row]
        return cell
    }
    
    
    @IBOutlet weak var dataReceived: UILabel!
    
}
