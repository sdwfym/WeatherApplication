//
//  ViewController.swift
//  WeatherApplication
//
//  Created by Dora Yuan on 2/9/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var cityList: UITableView!
    
    let cities = ["Atlanta, Georgia", "Austin, Texas", "Baltimore, Maryland", "Birmingham, Alabama", "Boston, Massachusetts", "Buffalo, New York", "Charlotte, North Carolina", "Chicago, Illinois", "Detroit, Michigan", "Los Angeles, California", "Seattle, Washington", "Washington, DC"]
    let temps = [53, 59, 45, 53, 44, 40, 49, 41, 42, 39, 46, 50]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityList.dataSource = self
        cityList.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "tempList")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tempList", for: indexPath) as! TableViewCell
        
        cell.nameLbl?.text = cities[indexPath.row]
        cell.tempLbl?.text = "\(temps[indexPath.row]) °F"
        
        return cell
    }
}




