//
//  ChannelViewController.swift
//  Slack
//
//  Created by Karthik on 01/03/20.
//  Copyright © 2020 Karthik. All rights reserved.
//

import UIKit

class ChannelViewController: UIViewController {

    
    @IBOutlet weak var tableView : UITableView!
    
    var items = ["general","settings","general","settings","general","settings","general","settings","general","settings"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "LoginCell", bundle: nil), forCellReuseIdentifier: "cell")

        self.revealViewController()?.rearViewRevealWidth = self.view.frame.width - 80
        // Do any additional setup after loading the view.
    }
    

 
    @IBAction func loginBtnTapped(_ sender : Any){
        
        let storyboard = UIStoryboard.init(name: "Login", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        
        self.navigationController?.pushViewController(controller, animated: true)
    }

}

extension ChannelViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! LoginCell
        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.textColor = .blue
        cell.backgroundColor = .clear
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
        
    
}
