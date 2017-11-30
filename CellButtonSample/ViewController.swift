//
//  ViewController.swift
//  CellButtonSample
//
//  Created by Ryuta Kibe on 2017/11/30.
//  Copyright © 2017 blk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    private let cellName = "CustomCell"

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.register(UINib(nibName: self.cellName, bundle: nil), forCellReuseIdentifier: self.cellName)
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cellName, for: indexPath)
        print("📝cell.isUserInteractionEnabled: \(cell.isUserInteractionEnabled)")
        print("📝cell.contentView.isUserInteractionEnabled: \(cell.contentView.isUserInteractionEnabled)")
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
