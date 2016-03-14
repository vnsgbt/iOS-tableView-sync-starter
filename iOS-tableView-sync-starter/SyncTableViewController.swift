//
//  SyncTableViewController.swift
//  iOS-tableView-sync-starter
//
//  Created by dev2 on 3/9/16.
//  Copyright © 2016 vnsgbt. All rights reserved.
//

import UIKit

class SyncTableViewController: UIViewController {
    
    @IBOutlet weak var syncTableView: UITableView!

    let cellIndentifier = "SyncTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()

        syncTableView.registerNib(UINib(nibName: cellIndentifier, bundle: nil), forCellReuseIdentifier: cellIndentifier)
        syncTableView.rowHeight = 80
    }
}

extension SyncTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = syncTableView.dequeueReusableCellWithIdentifier(cellIndentifier) as! SyncTableViewCell
        
        return cell
    }
}
