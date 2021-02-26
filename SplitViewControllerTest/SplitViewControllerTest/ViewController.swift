//
//  ViewController.swift
//  SplitViewControllerTest
//
//  Created by craterzone on 26/02/21.
//

import UIKit

class ViewController: UIViewController {
    let splitVC = UISplitViewController(style: .doubleColumn)

    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        splitVC.delegate = self
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    @objc private func didTapButton(){
        
        let secondVC = UIViewController()
        secondVC.view.backgroundColor = .systemBlue
        secondVC.title = "Home"
        let menuVC = MenuController(style: .plain)
        menuVC.delegate = self
        splitVC.viewControllers = [
            //UINavigationController(rootViewController: MenuController(style: .plain)),
            UINavigationController(rootViewController: menuVC),
            UINavigationController(rootViewController: secondVC)
        ]
        
        self.present(splitVC, animated: true, completion: nil)
        
    }
}
extension ViewController : MenuControllerDelegate {
    func didTabMenuItem(at index: Int, title: String?) {
        (splitVC.viewControllers.last as? UINavigationController)?.popToRootViewController(animated: false)
        let vc = UIViewController()
        vc.view.backgroundColor = .systemRed
        vc.title = title
        (splitVC.viewControllers.last as? UINavigationController)?.pushViewController(vc, animated: true)
    }
    
    
}

protocol  MenuControllerDelegate : AnyObject {
    func didTabMenuItem(at index : Int, title : String?)
}

class MenuController : UITableViewController {
    weak var delegate : MenuControllerDelegate?
    override init(style : UITableView.Style){
        super.init(style: style)
        title = "Menu"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text =  "Option \(indexPath.row)"
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let cellLabel = tableView.cellForRow(at: indexPath)?.textLabel?.text
        delegate?.didTabMenuItem(at: indexPath.row, title: cellLabel)
    }
}


extension ViewController : UISplitViewControllerDelegate {
    
}
