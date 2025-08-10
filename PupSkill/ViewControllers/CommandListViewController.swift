//
//  ViewController.swift
//  PupSkill
//
//  Created by Leonid on 07.08.2025.
//

import UIKit

final class CommandListViewController: UITableViewController {

    private let commandList = CommandDataStore.getCommandList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0.01))
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let detailsVC = segue.destination as? CommandDetailsViewController
        detailsVC?.command = commandList[indexPath.row]
    }
}

// MARK: - UITableViewDataSource
extension CommandListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        commandList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "commandCell", for: indexPath)
        let command = commandList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = command.title
        content.textProperties.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        content.image = UIImage(named: command.image)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = content
        return cell
    }
}
