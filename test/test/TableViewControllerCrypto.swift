//
//  TableViewControllerCrypto.swift
//  test
//
//  Created by vandeperre on 31/03/2023.
//

import UIKit

class TableViewControllerCrypto: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func currency(_ sender: UISegmentedControl) {
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "cellCrypto") as! TableViewCellCrypto
            switch sender.selectedSegmentIndex {
            case 0: cell2.lblCurrencyCrypto.text = "1"
            case 1:
                cell2.lblCurrencyCrypto.text = "2"
                tableView.reloadData()
            case 2:
                cell2.lblCurrencyCrypto.text = "3"
                tableView.reloadData()
            default:
                break
            }
            tableView.reloadData()
            return cell2
        }
    }
    
    
    
    var array = ["BITCOIN","ETHEREUM","LITECOIN","XRP"]
    
    var searchedIndice = [String]()
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        indiceSearch.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searchedIndice.count
        } else {
            return array.count
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cellCrypto") as! TableViewCellCrypto
        if searching {
            cell.nameCryptoCell.text = searchedIndice[indexPath.row]
            cell.imgCryptoCell.image = UIImage (named:  searchedIndice[indexPath.row]+".png")
        } else {
            cell.nameCryptoCell.text = array[indexPath.row]
            cell.imgCryptoCell.image = UIImage (named:  array[indexPath.row]+".png")
         }
        searching = false
        return cell
       }
    
    @IBOutlet weak var indiceSearch: UISearchBar!
    
}

extension TableViewControllerCrypto: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchedIndice = array.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        searching = true
        tableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
        tableView.reloadData()
    }
    
}

