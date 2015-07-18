//
//  SwiftFontFamilyViewController.swift
//  Example
//
//  Created by MORITANAOKI on 2015/07/18.
//  Copyright (c) 2015年 molabo. All rights reserved.
//

import UIKit

class SwiftFontFamilyViewController: UITableViewController {
    
    let viewModel = SwiftFontFamilyViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension SwiftFontFamilyViewController {
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return count(viewModel.families)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count(viewModel.families[section].fonts)
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return viewModel.families[section].name
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let family = viewModel.families[indexPath.section]
        let font = family.fonts[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
        cell.textLabel?.text = font.name
        cell.textLabel?.font = font.font
        return cell
    }
}