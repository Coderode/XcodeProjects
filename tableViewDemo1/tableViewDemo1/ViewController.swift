//
//  ViewController.swift
//  tableViewDemo1
//
//  Created by craterzone on 08/02/21.
//

import UIKit

class ViewController: UIViewController {
    
    var iOSDevelopers = [1 : ["Himanshu Singh","iOS Tech Lead"],
                         2 :["Jatin Mittal","iOS Associate Engineer"],
                         3 :["Shwetansh","iOS Associate Engineer"],
                         4 :["Vikas","iOS Associate Engineer"],
                         5 :["Sandeep","iOS Trainee"],
                         6 :["Kushal","iOS Trainee"]]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "cutomTableViewCell", bundle: nil), forCellReuseIdentifier: "customViewCell")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.iOSDevelopers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = self.tableView.dequeueReusableCell(withIdentifier: "customViewCell", for: indexPath) as? cutomTableViewCell else {return UITableViewCell()}
        cell.cellTitle.text = self.iOSDevelopers[indexPath.row+1]![0]
        cell.cellSubtitle.text = self.iOSDevelopers[indexPath.row+1]![1]
        cell.cellImage.image = UIImage(named: "contact")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}

