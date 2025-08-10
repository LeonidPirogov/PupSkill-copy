//
//  AuthorListTableViewController.swift
//  PupSkill
//
//  Created by Leonid on 09.08.2025.
//

import UIKit

class AuthorListViewController: UITableViewController {

    private let authorList = AuthorDataStore.getAuthors()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 140
        tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0.01))
    }

}

// MARK: - UITableViewDataSource
extension AuthorListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        authorList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "authorCell", for: indexPath)
        let author = authorList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = author.fullName
        content.textProperties.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        content.secondaryText = author.role
        content.secondaryTextProperties.font = UIFont.systemFont(ofSize: 17, weight: .light)
        content.textToSecondaryTextVerticalPadding = 6
        content.image = UIImage(named: author.image)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        content.directionalLayoutMargins = NSDirectionalEdgeInsets(
                top: 16, leading: 24, bottom: 16, trailing: 20
            )
        
        cell.selectionStyle = .none
        cell.contentConfiguration = content
        return cell
    }
}
