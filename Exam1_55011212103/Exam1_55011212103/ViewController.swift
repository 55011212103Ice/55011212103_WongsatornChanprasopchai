//
//  ViewController.swift
//  Exam1_55011212103
//
//  Created by student on 12/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,UITableViewDataSource {
    
    var items = [NSManagedObject]()
    var amount = [NSManagedObject]()
    var price = [NSManagedObject]()
    
    func saveName(name:String){
        //1
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let managedContext = appDelegate.managedObjectContext!
        //2
        let entity = NSEntityDescription.entityForName("Stocks", inManagedObjectContext: managedContext)
        let item = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        //3
        item.setValue(name, forKey: "name")
        //4
        var error: NSError?
        if !managedContext.save(&error){
            println("Could not save \(error), \(error?.userInfo)")
        }
        //5
        items.append(item)
    }
    func saveAmount(amount:Double){
        //1
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let managedContext = appDelegate.managedObjectContext!
        //2
        let entity = NSEntityDescription.entityForName("Stocks", inManagedObjectContext: managedContext)
        let item = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        //3
        item.setValue(amount, forKey: "amount")
        //4
        var error: NSError?
        if !managedContext.save(&error){
            println("Could not save \(error), \(error?.userInfo)")
        }
        //5
        items.append(item)
    }
    func savePrice(price:Double){
        //1
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let managedContext = appDelegate.managedObjectContext!
        //2
        let entity = NSEntityDescription.entityForName("Stocks", inManagedObjectContext: managedContext)
        let item = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        //3
        item.setValue(price, forKey: "price")
        //4
        var error: NSError?
        if !managedContext.save(&error){
            println("Could not save \(error), \(error?.userInfo)")
        }
        //5
        items.append(item)
    }
    @IBAction func addItem(sender: AnyObject) {
        
        var alert = UIAlertController(title: "New stocks", message:                                                                                                                                                                      "Add a new stocks", preferredStyle: .Alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .Default) {
            (action: UIAlertAction!) -> Void in
            
            let textField_name = alert.textFields![0] as UITextField
            let textField_amount = alert.textFields![1] as UITextField
            let textField_price = alert.textFields![2] as UITextField
            self.saveName(textField_name.text)
            self.saveAmount(Double((textField_amount.text as NSString).doubleValue))
            self.savePrice(Double((textField_price.text as NSString).doubleValue))
            self.tableView.reloadData()
        }
        let cancelAction = UIAlertAction(title: "cancel", style: .Default){
            (action: UIAlertAction!) -> Void in
        }
        
        
        alert.addTextFieldWithConfigurationHandler{
            (textField_name: UITextField!)-> Void in
            textField_name.placeholder = "Stock name"
            
        }
        alert.addTextFieldWithConfigurationHandler{
            (textField_amount: UITextField!) -> Void in
            textField_amount.placeholder = "amount"

        }
        alert.addTextFieldWithConfigurationHandler{
            (textField_price: UITextField!) -> Void in
            textField_price.placeholder = "price"

        }
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert, animated: true, completion: nil)
        
    }
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\"Stocks\""
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        
        let item = items[indexPath.row]
        cell.textLabel!.text = item.valueForKey("name") as String?
//        cell.textLabel!.text = "name: \(items[indexPath.row]) \n Total: \(amount[indexPath.row] * price[indexPath.row]) Baht"
        return cell
    }
    
    override func viewWillAppear(animated: Bool) {
        //1
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let managedContext = appDelegate.managedObjectContext!
        //2
        let fetchRequest = NSFetchRequest(entityName: "Stocks")
        //3
        var error: NSError?
        let fetchedResults = managedContext.executeFetchRequest(fetchRequest, error: &error) as [NSManagedObject]?
        
        if let results = fetchedResults{
            items = results
        }else {
            println("Could not fetch \(error), \(error!.userInfo)")
        }
    }


}

