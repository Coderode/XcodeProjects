//
//  ViewController.swift
//  TableViewTest
//
//  Created by craterzone on 08/02/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    private var iosTeam: [String] = ["Himanshu", "Sandeep", "Kushal", "Jatin", "Vikas", "Shwetansh", "Himanshu", "Sandeep", "Kushal", "Jatin", "Vikas", "Shwetansh"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.iosTeam.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = self.tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomCell else {return UITableViewCell()}
        cell.celltitle.text = self.iosTeam[indexPath.row]
        cell.cellSubtitle.text = "iosTeam"
        cell.cellImage.image = UIImage(named: "instalogo")
        return cell
    }
}

