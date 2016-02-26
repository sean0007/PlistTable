//
//  ViewController.swift
//  PlistTable
//
//  Created by sean ryan on 26/02/2016.
//  Copyright © 2016 sean ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var nameArray = [Name]()
    
    
    

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        //Load from plist into Array
        
        let path = NSBundle.mainBundle().pathForResource("name", ofType: "plist")
        let restDictArray = NSArray(contentsOfFile: path!)
        
        for restaurantItem in restDictArray! {
            let newRestaurant : Name = Name (personName:(restaurantItem.objectForKey("name")) as! String)
            
            nameArray.append(newRestaurant)
        }
        
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        let ID = nameArray[indexPath.row]
        cell.textLabel!.text = ID.personName
        
        return cell

    }
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "detailSegue" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let nameDetail : Name = nameArray[indexPath.row]
}
            }
}
}